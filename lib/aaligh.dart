import 'package:flutter/material.dart';

class aAligh extends StatelessWidget {
  const aAligh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyPage();
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Alignment _align = Alignment.topRight;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Przykład 5'),
        ),
        body: Center(
          child: Column( children: <Widget>[
        Container(
          width: 250.0,
          height: 250.0,
          color: Colors.blue[100],
          child: AnimatedAlign(
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
            alignment: _align,
          ),
        ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _align = _align == Alignment.topRight ? Alignment.bottomLeft :
                    Alignment.topRight;
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
