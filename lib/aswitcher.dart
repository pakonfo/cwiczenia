import 'package:flutter/material.dart';
import 'dart:math';

class aSwitcher extends StatelessWidget {
  const aSwitcher({Key? key}) : super(key: key);

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
  int _count = 0;
  bool switchChild = true;

  List colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.pink,
    Colors.blue,
    Colors.amber,
    Colors.deepPurple
  ];
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Przykład 4'),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            // width: MediaQuery.of(context).size.width /2,
            // height: MediaQuery.of(context).size.width / 5,
            color: Colors.blue[100],
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AnimatedSwitcher(
                    duration: const Duration(seconds: 3),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(scale: animation, child: child);
                    },
                    child: Text('$_count',
                        style: Theme.of(context).textTheme.headline5,
                        key: ValueKey<int>(_count)),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _count++;
                        });
                      },
                      child: const Text('Start')),
                  const SizedBox(
                    height: 30,
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(seconds: 3),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(child: child, scale: animation);
                    },
                    child: switchChild
                        ? Container(
                            key: UniqueKey(),
                            height: 90.0,
                            width: 90.0,
                            color: colors[random.nextInt(colors.length)],
                          )
                        : Container(
                            key: UniqueKey(),
                            height: 140.0,
                            width: 140.0,
                            color: colors[random.nextInt(colors.length)],
                          ),
                    // )
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        switchChild = !switchChild;
                      });
                    },
                    child: const Text('Click'),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
