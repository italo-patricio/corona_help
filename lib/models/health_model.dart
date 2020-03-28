import 'dart:convert';

class HealthConditionModel {
  bool corona;
  bool fever;
  bool coryza;
  bool stuffyNose;
  bool tiredness;
  bool headache;
  bool bodyPain;
  bool generalDiscomfort;
  bool soreThroat;

  HealthConditionModel({
    this.corona,
    this.fever,
    this.coryza,
    this.stuffyNose,
    this.tiredness,
    this.headache,
    this.bodyPain,
    this.generalDiscomfort,
    this.soreThroat,
  });

  factory HealthConditionModel.fromJson(String str) => HealthConditionModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HealthConditionModel.fromMap(Map<String, dynamic> json) => HealthConditionModel(
    corona: json["corona"],
    fever: json["fever"],
    coryza: json["coryza"],
    stuffyNose: json["stuffyNose"],
    tiredness: json["tiredness"],
    headache: json["headache"],
    bodyPain: json["bodyPain"],
    generalDiscomfort: json["generalDiscomfort"],
    soreThroat: json["soreThroat"],
  );

  Map<String, dynamic> toMap() => {
    "corona": corona,
    "fever": fever,
    "coryza": coryza,
    "stuffyNose": stuffyNose,
    "tiredness": tiredness,
    "headache": headache,
    "bodyPain": bodyPain,
    "generalDiscomfort": generalDiscomfort,
    "soreThroat": soreThroat,
  };
}
