void main(List<String> args) {
  Dog d1 = Dog();
  print("이름은 ${d1.name}");
  print("나이는 ${d1.age}");
  print("색깔은 ${d1.color}");
  print("목마름 지수는 ${d1.thirsty}");
  d1.thirsty = 50;
  print("목마름 지수는 ${d1.thirsty}");

int aa=3;
  switch(aa){
    case 1: print('야옹');break;
    case 2: print('멍멍');break;
    default: print('ㅋㅋ');
  }

}



class Dog{
  String name = "Toto";
  int age = 13;
  String color = "white";
  int thirsty = 100;
  void drinkWater(){
    thirsty = thirsty -50;

  }
}
