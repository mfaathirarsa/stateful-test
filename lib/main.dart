import 'package:flutter/material.dart';
import 'package:stateful_test/button_section.dart';
import 'package:stateful_test/text_section.dart';
import 'package:stateful_test/title_section.dart';

import 'image_section.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  TitleSection titleSection = TitleSection(name: 'Title', location: 'Jakarta');
  @override
  Widget build(BuildContext context) {
    const String demo = 'Demo';
    return MaterialApp(
      title: demo,
      home: Scaffold(
        appBar: AppBar(title: const Text(demo)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ImageSection(
                image: 'images/lake.jpg',
              ),
              titleSection,
              const ButtonSection(),
              TextSection(
                description:
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                    'Bernese Alps. Situated 1,578 meters above sea level, it '
                    'is one of the larger Alpine Lakes. A gondola ride from '
                    'Kandersteg, followed by a half-hour walk through pastures '
                    'and pine forest, leads you to the lake, which warms to 20 '
                    'degrees Celsius in the summer. Activities enjoyed here '
                    'include rowing, and riding the summer toboggan run.',
                clickCounter: titleSection.favoriteWidget.favoriteCount,
              ),
            ],
          ),
        )
      ),
    );
  }
}
