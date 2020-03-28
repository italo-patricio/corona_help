import 'dart:convert';

class LocationModel {
  List<double> coordinates;

  LocationModel({
    this.coordinates,
  });

  factory LocationModel.fromJson(String str) => LocationModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LocationModel.fromMap(Map<String, dynamic> json) => LocationModel(
    coordinates: List<double>.from(json["coordinates"].map((x) => x.toDouble())),
  );

  Map<String, dynamic> toMap() => {
    "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
  };
}
