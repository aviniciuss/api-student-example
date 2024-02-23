import 'dart:convert';

class City {
  int id;
  String name;

  City({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
    );
  }

  factory City.fromJson(String json) => City.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'City{id: $id, name: $name}';
  }
}
