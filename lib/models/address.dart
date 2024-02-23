import 'dart:convert';

import 'package:api_student_example/models/city.dart';
import 'package:api_student_example/models/phone.dart';

class Address {
  String street;
  int number;
  String zipcode;
  City city;
  Phone phone;

  Address({
    required this.street,
    required this.number,
    required this.zipcode,
    required this.city,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      'street': street,
      'number': number,
      'zipcode': zipcode,
      'city': city.toMap(),
      'phone': phone.toMap(),
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      street: map['street'] ?? '',
      number: map['number'] ?? 0,
      zipcode: map['zipcode'] ?? '',
      city: City.fromMap(map['city'] ?? {}),
      phone: Phone.fromMap(map['phone'] ?? {}),
    );
  }

  factory Address.fromJson(String json) => Address.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Address{street: $street, number: $number, zipcode: $zipcode, city: $city, phone: $phone}';
  }
}
