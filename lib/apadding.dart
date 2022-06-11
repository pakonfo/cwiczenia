import 'package:flutter/material.dart';
class aPadding extends StatelessWidget {
  const aPadding({Key? key}) : super(key: key);

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

double padValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Przykład 2'),
          ),
          body: Column(
            children: [
              AnimatedPadding(
                padding: EdgeInsets.all(padValue),
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                child:
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width /5,
                    color: Colors.red,
                  ),
              ),
                  ElevatedButton(onPressed: (){
                    setState(
                      // () => _currentOpacity = 100.0);
                            () => padValue = padValue == 0.00 ? 100.0: 0.0);
                  },
                      child: const Text('Start'))
                ],
              ),

          ),
        );

  }
}
