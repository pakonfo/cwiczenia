import 'package:flutter/material.dart';
//import 'package:flutter/scheduler.dart' show timeDilation;
import 'aOpacity.dart';
import 'apadding.dart';
import 'apositioned.dart';
import 'aswitcher.dart';
import 'aaligh.dart';
import 'asize.dart';
import 'aphysicalmodel.dart';
import 'acrossfade.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStartPage(),
    );
  }
}


class MyStartPage extends StatelessWidget {
  const MyStartPage({Key? key}) : super(key: key);

  Card doList(BuildContext context, String tytul, String opis, int index){
    return Card(
      margin: const EdgeInsets.all(4.0),
      elevation: 2.0,
child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Icons.album),
          title: Text(tytul),
          subtitle: Text(opis),
        ),
             
             ElevatedButton(
                 onPressed:  () {
                   if(index==0) {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AOpacity()));
                   }
                   if (index==1) {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const aPadding()));
                   }
                   if (index==2) {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const APositioned()));
                   }
                   if (index==3) {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const aSwitcher()));
                   }
                   if (index==4) {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const aAligh()));
                   }
                   if (index==5) {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const aCrossFade()));
                   }
                   if (index==6) {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const aSize()));
                   }
                   if (index==7) {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const aphysicalmodel()));
                   }

                   },
                  child: const Text('Dalej')
    ),

    ])
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cwiczenie 6'),
      ),
      body: ListView(
        children: [
          doList(context, 'Animated Opacity', 'Zmiana widoczności widgetu. Przejście z ukrytego '
              'do widocznego.', 0),
          doList(context, 'Animated Padding', 'Zmiana parametru padding czyli'
              ' odstępu od innych widgetów.', 1),
        doList(context, 'Animated Positioned', 'Zmiana położenia widgetu oraz'
                 ' jego szerkości i wysokości.', 2),
             doList(context, 'Animated Switcher', 'Zamiana widgetu na inny', 3),
             doList(context, 'Animated Aligh', 'Zmiana wyśrodkowania', 4),
             doList(context, 'Animated Cross Fade', 'Zamiana 2 widgetów przy pomocy'
                 ' animacji Cross Fade', 5),
             doList(context, 'Animated Size', 'Zmiana rozmiaru obiektu', 6),
             doList(context, 'Animated Physical Model', 'Animacja elevation i borderRadius.', 7),
        ],
      )

    );
  }

}


