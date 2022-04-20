import 'package:flutter/material.dart';
import 'dane.dart';

import 'szczegoly.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Dane> osoby = [];

  // Dane
  var daneOsobowe = [
    {'name': "Ania", 'image': 'images/1.jpg'},
    {'name': "Albert", 'image': 'images/2.jpg'},
    {'name': "Jarek", 'image': 'images/3.jpg'},
    {'name': "Monik", 'image': 'images/4.jpg'},
    {'name': "Mirek", 'image': 'images/5.jpg'},
    {'name': "Tom", 'image': 'images/6.jpg'},
    {'name': "Czarek", 'image': 'images/7.png'},
    {'name': "Marta", 'image': 'images/8.png'},
  ];
// Dodanie osób do listy
  void _addPerson() {
    daneOsobowe.forEach((item) {
      //Dane osoba = Dane(item['name'].toString(), item['image'].toString());
      //osoby.add(osoba);
      osoby.add(Dane(item['name'].toString(), item['image'].toString()));
    });
  }
// Tworzenie listy kontenerów
  List<Container> _doList() {
    List<Container> kontenery = [];
    _addPerson();
    for (int i = 0; i < daneOsobowe.length; i++) {
      kontenery.add(Container(
        child: Column(
          children: [
            InkWell(
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Szczegoly(
                  image: osoby[i].image, name: osoby[i].name
                )),
              );},
              child: Hero(
                tag: osoby[i].name,
                child: ClipOval(
                  child: Image.asset( 
                    osoby[i].image,
                    width: 100,
                    height: 100,
                  ),
                ),
              )

            ),


            Text(osoby[i].name)
          ],
        ),
      ));
    }
    return kontenery;
  }
// Wygląd okna - tworzenie gridview
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cwiczenie do filmu'),
      ),
      body: Center(
          child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              padding: const EdgeInsets.all(10),
              children: _doList())),
    );
  }
}
