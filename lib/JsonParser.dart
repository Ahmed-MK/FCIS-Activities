import 'package:fcis_activities/Activity.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JsonParser {
  static final String _url =
      "https://script.googleusercontent.com/macros/echo?user_content_key=-Rc9YleDGZj3MreY3tgJOHSDxlaXY7oj1uUe3qp-jsN6CGj7Oh_THPDZ1oAA-VkGqAv_IxZb_WPSA0wqgKTWC-2R8cVLwH93OJmA1Yb3SEsKFZqtv3DaNYcMrmhZHmUMWojr9NvTBuBLhyHCd5hHa1GhPSVukpSQTydEwAEXFXgt_wltjJcH3XHUaaPC1fv5o9XyvOto09QuWI89K6KjOu0SP2F-BdwUVPxrLlGT-lMOTdNMFwVSc_aax-sRBnELnvupCLNBYjsegw2fMRHLhcnc4gaZBoxI5y7FLqOV0Tk27B8Rh4QJTQ&lib=MnrE7b2I2PjfH799VodkCPiQjIVyBAxva";

  Map<String, dynamic> _activityMap = new Map<String, dynamic>();
  List<Activity> _activitiesList = new List<Activity>();
  bool isListAvailable = false;

  Future<List<Activity>> getFutureActivitiesList() async {
    http.Response response = await http.get(_url);

    var jsonData = jsonDecode(response.body);
    _activityMap = jsonData;

    return _parsedActivitiesList();
  }

  List<Activity> _parsedActivitiesList() {
    try {
      if (_activitiesList.isEmpty) {
        for (int i = 0; i < 7; i++) {
          Activity activity = new Activity(
            _activityMap["Sheet1"][i]["activityName"],
            _activityMap["Sheet1"][i]["vision"],
            _activityMap["Sheet1"][i]["mission"],
            _activityMap["Sheet1"][i]["backGround"],
            _activityMap["Sheet1"][i]["foreGround"],
            _activityMap["Sheet1"][i]["year"],
          );
          _activitiesList.add(activity);
        }
      }
    } catch (e) {
      print("Error occured while getting API data");
      print(e.toString());
    }
    isListAvailable = true;
    return _activitiesList;
  }

  List<Activity> getActivitiesList() {
    return _activitiesList;
  }
}
