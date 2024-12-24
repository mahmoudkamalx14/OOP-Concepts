class A {
  void showA() {
    print("A");
  }
}

class B extends A {
  void showB() {
    print("B");
  }
}

class C extends B {
  void showC() {
    print("C");
  }
}

void main() {
  C c = C();
  c.showA(); // output: A
  c.showB(); // output: B
  c.showC(); // output: C
}
