class Activity {
  dynamic _activityName;
  dynamic _vision;
  dynamic _mission;
  dynamic _background;
  dynamic _foreground;
  dynamic _year;

  Activity(this._activityName, this._vision, this._mission, this._background,
      this._foreground, this._year);

  dynamic get year => _year;

  dynamic get foreground => _foreground;

  dynamic get background => _background;

  dynamic get mission => _mission;

  dynamic get vision => _vision;

  dynamic get activityName => _activityName;
}
