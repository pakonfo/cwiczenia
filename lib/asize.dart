import 'package:flutter/material.dart';

class aSize extends StatelessWidget {
  const aSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const myPage();
  }
}

class myPage extends StatefulWidget {
  const myPage({Key? key}) : super(key: key);

  @override
  State<myPage> createState() => _myPageState();
}

class _myPageState extends State<myPage> {
  double _size = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Przykład 7'),
          ),
          body: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(alignment: Alignment.center,
                 margin: const EdgeInsets.all(100.0),
                 color: Colors.amberAccent,
                child: AnimatedSize(
                    curve: Curves.easeIn,
                    duration: const Duration(seconds: 1),
                    child: FlutterLogo(size: _size)),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _size = _size==100 ? 250.0 : 100.0;
                    });
                  },
                  child: const Text('Start'))
            ],
          )),
    );
  }
}
