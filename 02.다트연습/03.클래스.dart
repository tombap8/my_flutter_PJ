void main(List<String> args) {
  Dog d1 = Dog();
  print("이름은 ${d1.name}");

}


class Dog{
  String name = "Toto";
  int age = 13;
  String color = "white";
  int thirsty = 100;
}
