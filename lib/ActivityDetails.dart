import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fcis_activities/Activity.dart';
import 'package:flutter/material.dart';

class ActivityDetails extends StatelessWidget {
  final Activity _activity;
  ActivityDetails(this._activity);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(_activity.activityName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  )),
              background: Image.network(
                _activity.foreground,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Mission : " + _activity.mission,
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Vision : " + _activity.vision,
                      style: TextStyle(fontSize: 24)),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Year : " + _activity.year.toString(),
                      style: TextStyle(fontSize: 24)),
                ],
              ),
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add to Favourites",
        backgroundColor: Colors.white70,
        onPressed: () {},
        child: Icon(
          EvaIcons.heart,
          color: Colors.red,
        ),
      ),
    );
  }
}
