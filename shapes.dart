enum ShapeType { circle, rectangle }

abstract class Shape {
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.rectangle:
        return Rectangle();
      default:
        throw 'Invalid shape type';
    }
  }

  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print('  ***  ');
    print(' *   * ');
    print('*     *');
    print('*     *');
    print(' *   * ');
    print('  ***  ');
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print('*******');
    print('*     *');
    print('*     *');
    print('*******');
  }
}

void main() {
  try {
    Shape circle = Shape(ShapeType.circle);
    Shape rectangle = Shape(ShapeType.rectangle);
    circle.draw(); // Output: ASCII art representation of a circle
    rectangle.draw(); // Output: ASCII art representation of a rectangle
  } catch (e) {
    print(e); // Output: Invalid shape type
  }
}
