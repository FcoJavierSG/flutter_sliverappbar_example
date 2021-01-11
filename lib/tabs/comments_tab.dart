import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class CommentsTab extends StatelessWidget {
  const CommentsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          cardComment(lipsum.createParagraph()),
          cardComment(lipsum.createParagraph()),
          cardComment(lipsum.createParagraph()),
          cardComment(lipsum.createParagraph()),
          cardComment(lipsum.createParagraph()),
          cardComment(lipsum.createParagraph()),
          cardComment(lipsum.createParagraph()),
          cardComment(lipsum.createParagraph()),
          cardComment(lipsum.createParagraph()),
          cardComment(lipsum.createParagraph()),
        ],
      ),
    );
  }

  Widget cardComment(String comment) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("User - Comment title"),
        SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
              decoration: BoxDecoration(color: Colors.black12),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(comment),
              )),
        )
      ]));
}
