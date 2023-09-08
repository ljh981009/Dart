void main() {
  final parent = Parent(id: 1);

  print(parent.id);
  final child = Child(id: 3);
  print(child.id);

  final parent2 = Parent.fromInt(5);
  print(parent2);
}

class Parent {
  final int id;

  Parent({
    required this.id,
  });

  factory Parent.fromInt(int id) {
    return Child(id: id);
  }
}

class Child extends Parent {
  Child({
    required super.id,
  });
}
