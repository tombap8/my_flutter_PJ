void main(List<String> args) {
  Dog d1 = Dog();
  print('멍멍이 명세서:');
  d1.name = '닥스훈트';
  print("이름은 ${d1.name}");
  print("나이는 ${d1.age}");
  print("색깔은 ${d1.color}");

  print('훈련1회함!${d1.traningDog()}%');
  dynamic doit;
  for (var i = 0; i < 10; i++) {
    doit = d1.traningDog();
  }
  print('훈련10회함!$doit%');

  Dog d2 = Dog();
  print("이름은 ${d2.name}");

  Cat c1 = Cat('이집트고양이', 9, '밝은회색', 77);
  print('고양이 이름은 ${c1.name}');
  print('내 애완 동물은 ${c1.species}');
  print('${c1.species}의 울음소리는 ${c1.hearSound(c1.species)}');
  print('내 고양이 ${c1.name}의 성격은 ${c1.character}입니다!');
} //////////// main ////////////

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
class Pet {
  // 애완종류
  String species;
  // 성격
  String character;
  // 먹이종류
  String food;

  Pet(this.species, this.character, this.food) {
    print('부모 Pet 클래스 생성자!');
  }

  String hearSound(sp) {
    dynamic retVal;
    switch (sp) {
      case '고양이':
        retVal = '야옹';
        break;
      case '강아지':
        retVal = '멍멍';
        break;
      default:
        retVal = '동물소리';
    }
    return retVal;
  }
} /////// Pet 클래스 ////////

// 멍멍이 클래스
class Dog {
  // 클래스 속성들
  String name = "시바견";
  int age = 8;
  String color = "검정색";
  int bite = 100;

  // 클래스 메서드
  int traningDog() {
    bite = bite - 5;
    if (bite < 5)
      bite = 5;
    else if (bite > 100) bite = 100;

    return bite;
  }
} //////// Dog 클래스 /////

// 야옹이 클래스
class Cat extends Pet {
  // 클래스 속성들
  // 고양이이름
  String name;
  // 고양이년수
  int age;
  // 고양이색깔
  String color;
  // 고양이펀치지수(0~100%)
  int punch;

  Cat(this.name, this.age, this.color, this.punch) : super('고양이', '내성적', '생선') {
    print('Cat 생성자함수');
  }

  // 클래스 메서드
  void traningCat() {
    punch = punch - 5;
  }
}
