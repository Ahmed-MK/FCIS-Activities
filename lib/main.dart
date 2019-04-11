import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fcis_activities/ActivitiesListView.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.orangeAccent,
      ),
      home: MyHomePage(title: 'FCIS Activities'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(EvaIcons.search),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: ActivitiesListView(),
      drawer: Drawer(
        child: Text("Test"),
      ),
    );
  }
}
