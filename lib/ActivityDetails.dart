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
              title: Text(_activity.activityName),
              background: Image.network(
                _activity.background,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SliverFillRemaining(
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
          ))
        ],
      ),
    );
  }
}
