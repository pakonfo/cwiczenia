import 'package:flutter/material.dart';

class Szczegoly extends StatelessWidget {
  const Szczegoly({Key? key, required this.image, required this.name})
      : super(key: key);
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cwiczenie'),
      ),
      body: Center(
          child: Column(
        children: [
          Hero(
            tag: name,
            child: Image.asset(image),
          ),
          Text(name),
        ],
      )),
    );
  }
}
