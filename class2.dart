void main() {
  final student = Student();
  print('Laura is ${student(2003)}');
}

class Student {
  int call(int yearOfBirth) {
    return DateTime.now().year - yearOfBirth;
  }
}
