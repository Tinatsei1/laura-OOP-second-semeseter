class Student {
  late double height;
  int age = 0;

  Student({required double startingHeight}) {
    height = startingHeight;
  }
  void grow(int numberOfYears) {
    age = age + numberOfYears;
  }
}
