import 'dart:convert';

class PatientModel {
  PatientModel({
    this.gender, 
    this.nameFirst, 
    this.nameLast, 
    this.locationStreetNumber, 
    this.locationStreetName, 
    this.locationCity, 
    this.locationState, 
    this.locationCountry, 
    this.email, 
    this.dobDate, 
    this.phone, 
    this.idValue, 
    this.pictureLarge, 
    this.nat
  });

  final String gender;
  final String nameFirst;
  final String nameLast;
  final int locationStreetNumber;
  final String locationStreetName;
  final String locationCity;
  final String locationState;
  final String locationCountry;
  final String email;
  final String dobDate;
  final String phone;
  final String idValue;
  final String pictureLarge;
  final String nat;

  PatientModel copyWith({
    String gender,
    String nameFirst,
    String nameLast,
    String locationStreetNumber,
    String locationStreetName,
    String locationCity,
    String locationState,
    String locationCountry,
    String email,
    String dobDate,
    String phone,
    String idValue,
    String pictureLarge,
    String nat,
  }) =>
      PatientModel(
        gender: gender ?? this.gender,
        nameFirst: nameFirst ?? this.nameFirst,
        nameLast: nameLast ?? this.nameLast,
        locationStreetNumber: locationStreetNumber ?? this.locationStreetNumber,
        locationStreetName: locationStreetNumber ?? this.locationStreetNumber,
        locationCity: locationStreetNumber ?? this.locationStreetNumber,
        locationState: locationStreetNumber ?? this.locationStreetNumber,
        locationCountry: locationStreetNumber ?? this.locationStreetNumber,
        email: email ?? this.email,
        dobDate: dobDate ?? this.dobDate,
        phone: phone ?? this.phone,
        idValue: idValue ?? this.idValue,
        pictureLarge: pictureLarge ?? this.pictureLarge,
        nat: nat ?? this.nat,
      );

  factory PatientModel.fromRawJson(String str) =>
      PatientModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PatientModel.fromJson(Map<String, dynamic> json) => PatientModel(
        gender: json["gender"],
        nameFirst: json["name"]["first"],
        nameLast: json["name"]["last"],
        locationStreetNumber: json["location"]["street"]["number"],
        locationStreetName: json["location"]["street"]["name"],
        locationCity: json["location"]["city"],
        locationState: json["location"]["state"],
        locationCountry: json["location"]["country"],
        email: json["email"],
        dobDate: json["dob"]["date"],
        phone: json["phone"],
        idValue: json["id"]["value"],
        pictureLarge: json["picture"]["large"],
        nat: json["nat"]
      );

  Map<String, dynamic> toJson() => {
        "gender": gender,
        "nameFirst": nameFirst,
        "nameLast": nameLast,
        "locationStreetNumber": locationStreetNumber,
        "locationStreetName": locationStreetName,
        "locationCity": locationCity,
        "locationState": locationState,
        "locationCountry": locationCountry,
        "email": email,
        "dobDate": dobDate,
        "phone": phone,
        "idValue": idValue,
        "pictureLarge": pictureLarge,
        "nat": nat,
      };
}

