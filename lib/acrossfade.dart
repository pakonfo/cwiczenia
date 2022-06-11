import 'package:flutter/material.dart';

class aCrossFade extends StatelessWidget {
  const aCrossFade({Key? key}) : super(key: key);

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
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Przykład 6'),
        ),
        body: Center(
          child: Column( children: <Widget>[
            Container(
              width: 250.0,
              height: 250.0,
              color: Colors.blue[100],
              child: AnimatedCrossFade(
                duration: const Duration(seconds: 1),
                firstChild: const FlutterLogo(size: 100.0),
                secondChild: Image.asset('images/logo kanału.png', width: 100),
                crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _first = !_first;
                  });
                },
                child: const Text('Start'))
          ]
          ),
        ),
      ),
    );
  }
}
