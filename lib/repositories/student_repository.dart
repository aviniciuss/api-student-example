import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:api_student_example/models/student.dart';

class StudentRepository {

  Future<Student> findById(int id) async {
    final student = await http.get(Uri.parse('http://localhost:8080/students/$id'));
    return Student.fromJson(student.body);
  }

  Future<List<Student>> findAll() async {
    final response =
        await http.get(Uri.parse('http://localhost:8080/students'));

    final students = jsonDecode(response.body);
    return students.map<Student>((map) => Student.fromMap(map)).toList();
  }
}
