import 'package:flutter/material.dart';
class aphysicalmodel extends StatefulWidget {
  const aphysicalmodel({Key? key}) : super(key: key);

  @override
  State<aphysicalmodel> createState() => _aphysicalmodelState();
}

class _aphysicalmodelState extends State<aphysicalmodel> {
  double _elevation = 2.0;
  BorderRadius _borderRadius = const BorderRadius.all(Radius.circular(0));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: const Text('Przykład 4'),
    ),
    body: Container(
        width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.width ,
    color: Colors.blue,
    child: Column(
      children: [
        const SizedBox(
          width: 50,
          height: 50,
        ),
        AnimatedPhysicalModel(
            shape: BoxShape.rectangle,
            borderRadius: _borderRadius,
            elevation: _elevation,
            animateColor: false,
            color: Colors.red,
            shadowColor: Colors.deepOrangeAccent,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
        child:
        Container(
          width: 140,
          height: 100,
          color: Colors.amberAccent,
        ),
        ),
        const SizedBox(height: 20,),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _elevation = _elevation==20.0 ? 2.00 : 20.0;
              });
            },
            child: const Text('Start')),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _borderRadius = _borderRadius==const BorderRadius.all(Radius.circular(0))
                    ? const BorderRadius.all(Radius.circular(10.0)) :
                const BorderRadius.all(Radius.circular(0));
              });
            },
            child: const Text('Kształt'))
      ],
    ),
    ),
        ),
    );

  }
}
