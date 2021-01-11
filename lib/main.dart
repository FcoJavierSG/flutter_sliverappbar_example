import 'package:flutter/material.dart';
import './tabs/comments_tab.dart';
import './tabs/info_tab.dart';
import './widgets/mysliverappbar_widget.dart';

void main() {
  runApp(MyApp());
}

/// Demo of the Flutter SliverAppBar widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SliverAppBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'SliverAppBar Demo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(controller: controller),
          SliverFillRemaining(
            child: TabBarView(
              controller: controller,
              children: <Widget>[
                InfoTab(),
                CommentsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
