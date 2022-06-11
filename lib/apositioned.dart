import 'package:flutter/material.dart';

class APositioned extends StatelessWidget {
  const APositioned({Key? key}) : super(key: key);

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
  double posValue = 50.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Przykład 3'),
        ),
        body: SizedBox(
          width: 200,
          height: 450,
          child: Stack(
            children: [
              AnimatedPositioned(
                width: posValue,
                height: posValue,
                top: posValue,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  color: Colors.red,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(
                        // () => _currentOpacity = 100.0);
                        () => posValue = posValue == 50.00 ? 200.0 : 50.0);
                  },
                  child: const Text('Start'))
            ],
          ),
        ),
      ),
    );
  }
}
