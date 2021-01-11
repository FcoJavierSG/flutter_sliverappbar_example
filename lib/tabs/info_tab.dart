import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class InfoTab extends StatelessWidget {
  const InfoTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Text(lipsum.createText(numParagraphs: 5, numSentences: 5))));
  }
}
