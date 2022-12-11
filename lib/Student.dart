import 'dbHelper.dart';

class Student {
  int? id;
  String? name;
  int? age;
  String? department;
  int? level;
  Student(this.id, this.name, this.age, this.department, this.level);
  Student.fromMap(Map<String, dynamic> stud) {
    id = stud["id"];
    name = stud["name"];
    age = stud["age"];
    department = stud["department"];
    level = stud["level"];
  }

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnAge: age,
      DatabaseHelper.columnDepartment: department,
      DatabaseHelper.columnLevel: level
    };
  }
}
