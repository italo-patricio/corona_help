import 'dart:convert';

import 'health_model.dart';
import 'location_model.dart';

class TrackerModel {
  LocationModel location;
  HealthConditionModel healthCondition;

  TrackerModel({
    this.location,
    this.healthCondition,
  });

  factory TrackerModel.fromJson(String str) => TrackerModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TrackerModel.fromMap(Map<String, dynamic> json) => TrackerModel(
    location: LocationModel.fromMap(json["location"]),
    healthCondition: HealthConditionModel.fromMap(json["healthCondition"]),
  );

  Map<String, dynamic> toMap() => {
    "location": location.toMap(),
    "healthCondition": healthCondition.toMap(),
  };
}
