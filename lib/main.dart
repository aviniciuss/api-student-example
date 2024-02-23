import 'package:api_student_example/repositories/student_repository.dart';

void main() async {
  final repository = StudentRepository();

  final students = await repository.findAll();
  print(students);

  print(' ');

  final student = await repository.findById(0);
  print(student);
}