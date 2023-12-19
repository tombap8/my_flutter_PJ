void main(List<String> args) {
  Dog d1 = Dog();
  print('멍멍이 명세서:')
  print("이름은 ${d1.name}");
  print("나이는 ${d1.age}");
  print("색깔은 ${d1.color}");
  print("물기 지수는 ${d1.bite}");
  d1.bite = 50;

  print('훈련한번함!');
  print("물기 지수는 ${d1.bite}");

int aa=3;
  switch(aa){
    case 1: print('야옹');break;
    case 2: print('멍멍');break;
    default: print('ㅋㅋ');
  }

}

/************************************* 
[ 다트의 클래스 ]
- 정의 : 목적을 가진 프로그램에서 사용하기 위해
구성요소에 해당하는 변수와 함수로 구성된
프로그램 단위체!
특히 클래스 내부의 변수를 속성(멤버)이라고함!
특히 클래스 내부의 함수를 메서드라고 함!

형식: class 키워드를 사용하여 파스칼케이스로 명명함
class MyClassIsPerfect{
  코드...
}


*************************************/

// 애완동물 클래스
class Pet{

} /////// Pet 클래스 ////////

// 멍멍이 클래스
class Dog{
  // 클래스 속성들
  String name = "시바견";
  int age = 8;
  String color = "검정색";
  int bite = 100;

  // 클래스 메서드
  void traningDog(){
    bite = bite - 5;
  }


} //////// Dog 클래스 /////

// 야옹이 클래스
class Cat{
  // 클래스 속성들
  String name = "먼치킨";
  int age = 5;
  String color = "얼룩색";
  int punch = 100;

  // 클래스 메서드
  void traningCat(){
    punch = punch - 5;
  }

}