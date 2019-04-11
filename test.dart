class Activity {
  dynamic activityName;
  dynamic vision;
  dynamic mission;
  dynamic background;
  dynamic foreground;
  dynamic year;

  Activity(this.activityName, this.vision, this.mission, this.background,
      this.foreground, this.year);
}

void main() {
  List<Activity> activitiesList = new List<Activity>();
  Activity activity = new Activity("1", "2", "3", "4", "5", "6");
  activitiesList.add(activity);
  print(activitiesList[0].vision);
}
