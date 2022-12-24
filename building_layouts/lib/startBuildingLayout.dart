import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Title Section
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Lake Augelmam Azagza',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Morocco, Middle Atlas',
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          )),
          Icon(Icons.star, color: Colors.red[500]),
          const Text(
            '41',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
    // Button section - Row
    Column _buildButtonSection(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection =
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      _buildButtonSection(color, Icons.call, "CALL"),
      _buildButtonSection(color, Icons.near_me, "ROUTE"),
      _buildButtonSection(color, Icons.share, "SHARE"),
    ]);

    // Text Section
    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'If you are looking for a new place to explore, you have found it:'
        'Aguelmam Azegza. Whether you are staying for one night or a whole week'
        'Aguelmam Azegza and the surrounding area has accommodations to suit every need'
        'With Hotels.com, find hotels for Aguelmam Azegza by exploring our online map'
        'Our map displays the area surrounding all hotels for Aguelmam Azegza.'
        'You can view the distance to the landmarks and attractions and then refine your search in the global area.'
        'The hotel deals for Aguelmam Azegza are presented here with our lowest price guarantee.',
        softWrap: true,
      ),
    );
    // Image Section
    Widget imageSection = Expanded(
        child: Image.asset(
      'images/Aguelmam_Aziza.jpg',
      width: 600,
      height: 500,
      fit: BoxFit.cover,
    ));
    return MaterialApp(
        title: "Layout Widgets",
        home: Scaffold(
            appBar: AppBar(
                title: const Center(
                  child: Text('Home'),
                ),
                shadowColor: const Color.fromARGB(255, 250, 250, 250)),
            body: ListView(children: [
              imageSection,
              titleSection,
              buttonSection,
              textSection
            ])));
  }
}
