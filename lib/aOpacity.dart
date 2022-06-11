import 'package:flutter/material.dart';

class AOpacity extends StatelessWidget {
  const AOpacity({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyPage();
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _myPageState();
}

class _myPageState extends State<MyPage> {
  double _currentOpacity = 0.0;
  @override
   Widget build(BuildContext context) {


    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Przykład 1'),
            ),
            body: Center(
              child:
              Column(
                children: [
                  AnimatedOpacity(
                    child: Image.asset('images/logo kanału.png', width: 150),
                    duration: const Duration(seconds: 3),
                    opacity: _currentOpacity,
                  ),
                  ElevatedButton(onPressed: (){
                    setState(
                            // () => _currentOpacity = 1.0);
                    () => _currentOpacity = _currentOpacity == 0 ? 1.0: 0.0);
                  },
                      child: const Text('Start'))
                ],
              ),
            )));
  }
}
