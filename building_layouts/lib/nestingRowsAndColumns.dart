import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Row Icon Section
    var firstRowSection = Row(mainAxisSize: MainAxisSize.min, children: const [
      Icon(
        Icons.star,
        color: Colors.black,
      ),
      Icon(
        Icons.star,
        color: Colors.grey,
      ),
      Icon(
        Icons.star,
        color: Colors.black,
      ),
      Icon(
        Icons.star,
        color: Colors.red,
      ),
      Icon(
        Icons.star,
        color: Colors.black,
      ),
    ]);

    Widget ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          firstRowSection,
          const Text(
            '170 Reviews',
            style: TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );

    // Second Section
    Column _colRowSection(IconData icon, String label1, String label2) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.green[600],
          ),
          Text(
            label1,
            style: const TextStyle(color: Colors.black),
          ),
          Text(
            label2,
            style: const TextStyle(color: Colors.black),
          )
        ],
      );
    }

    // Global Icon Section
    Widget colSectionContainer = Container(
      padding: const EdgeInsets.all(20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _colRowSection(Icons.kitchen, 'PREP:', '25 min'),
        _colRowSection(Icons.timer, 'COOK:', '1 hr'),
        _colRowSection(Icons.restaurant, 'FEEDS:', '4-6')
      ]),
    );

    // final left column

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(
        children: [ratings, colSectionContainer],
      ),
    );

    // Text Section
// Title Section
    Text _titleSection(String txt, FontWeight fontWeight, double opacity) {
      return Text(
        txt,
        style: TextStyle(
            color: Colors.black.withOpacity(opacity), fontWeight: fontWeight),
      );
    }

    // Text Section
    Widget textSection = const Padding(
      padding: EdgeInsets.fromLTRB(32, 10, 32, 5),
      child: Text(
        'Moroccan couscous is a culinary specialty of the Maghreb.'
        'It represents a simple mixture of two main dishes.'
        'It consists of wheat semolina cooked in a steamed couscoussier and a fatty'
        'substance which can be either butter or generally olive oil.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'MY APP FOR NESTING ROW AND COLUMN',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('MAROCAIN COUSCOUS')),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/couscous.jpg',
              width: 800,
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(32, 5, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _titleSection('COUSCOUS MAGHREBIEN', FontWeight.bold, 1.0),
                    _titleSection('Morocco', FontWeight.w800, 0.5)
                  ],
                )),
            textSection,
            leftColumn,
          ],
        ),
      ),
    );
  }
}
