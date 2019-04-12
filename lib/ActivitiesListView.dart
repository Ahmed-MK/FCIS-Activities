import 'package:fcis_activities/ActivityDetails.dart';
import 'package:fcis_activities/JsonParser.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class ActivitiesListView extends StatefulWidget {
  @override
  _ActivitiesListViewState createState() => _ActivitiesListViewState();
}

class _ActivitiesListViewState extends State<ActivitiesListView> {
  JsonParser jsonParser = new JsonParser();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: jsonParser.getFutureActivitiesList(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == null)
          return Center(child: new CircularProgressIndicator());
        else {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Card(
                  margin: EdgeInsets.all(8.0),
                  elevation: 2.0,
                  child: Column(
                    children: <Widget>[
                      Image.network(snapshot.data[index].background),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                snapshot.data[index].activityName,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            IconButton(
                              icon: Icon(EvaIcons.heart),
                              splashColor: Colors.orange,
                              color: Colors.red,
                              onPressed: () {
                                print("pressed");
                              },
                            )
                          ])
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ActivityDetails(snapshot.data[index])),
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}
