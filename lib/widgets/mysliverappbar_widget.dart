import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final TabController controller;

  const MySliverAppBar({Key key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        title: Text("SliverAppBar Demo"),
        centerTitle: true,
        floating: true,
        pinned: true,
        stretch: true,
        flexibleSpace: FlexibleSpaceBar(
            stretchModes: [
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
            ],
            background: Image.network(
              "https://picsum.photos/id/10/2500/1667",
              fit: BoxFit.cover,
            )),
        bottom: TabBar(
          tabs: [
            Tab(
              text: 'Info',
              icon: Icon(Icons.info),
            ),
            Tab(
              text: 'Comments',
              icon: Icon(Icons.comment),
            ),
          ],
          controller: controller,
        ),
        expandedHeight: 350,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {/* ... */},
          ),
        ]);
  }
}
