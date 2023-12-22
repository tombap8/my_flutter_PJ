// https://theoryof0.tistory.com/117

// 추상클래스 : 형식을 강제할때 사용하는 클래스 생성방법
// 일반 상속과 달리 추상클래스의 모든 속성과 메서드를 구현해야함!
// 사용 클래스에서는 implements 키워드를 사용함

abstract class Saram {
  Saram(this.name);

  final String name;
  String gender();
  String age();
  String eat() => '$name씨는 지금 아무것도 안먹는다!';
  String say() => '$name씨는 지금 아무말도 안한다!';
}

/*************************************** 
[ 겟터 / 셋터 ]
변수값 읽기와 할당을 하도록 캡슐화를 하여
값 셋팅시 정보를 은닉하여 변수를 관리하는 방법

((방법:))
late 변수형 셋팅변수명;
변수형 get 변수명 => 셋팅변수명;
set 변수명(변수형 변수명) -> 셋팅변수명 = 변수명

((겟터/셋터 변수명))
일반적으로 변수명과 셋팅변수명은 같은이름이며 
셋팅변수명 앞에 언더바(_)를 붙여구분함
예) 변수명-> name, 셋팅변수명->_name

((late 키워드))
선언한 변수가 바로 할당되지 못할 경우
late 키워드를 앞에 사용하여 사용직전에
할당될 것임일 알려주면 에러를 막을 수 있다!

((겟터/셋터 값할당))
-> 외부에서 인스턴스 생성후 셋터를 통해 
값을 셋팅할 경우 변수명에 할당하면 된다!
클래스.변수명 = 값

 ***************************************/

class KyungSu implements Saram {
  @override
  // String get name => '도경수';
  late String _name;
  String get name => _name;
  set name(String name) => _name = name;

  @override
  String gender() => '$name씨는 남자다!';

  @override
  String age() => '$name씨의 나이는 20살이다!';

  @override  
  String eat(){return '$name씨는 피자를 먹는다!';}
  // String eat() => '$name씨는 피자를 먹는다!';

  @override
  String say() => '$name씨는 무엇인가 말하고 있다!';
}

class JeeHyun extends Saram {
  JeeHyun(String name) : super(name);

  @override
  String gender() => '$name씨는 여자다!';

  @override
  String age() => '$name씨는 21살이다!';
}

abstract class Namja extends Saram {
  Namja(String name) : super(name);

  @override
  String gender() => '$name씨는 남자다!';
}

abstract class Yeoja extends Saram {
  Yeoja(String name) : super(name);

  @override
  String gender() => '$name씨는 여자다!';
}

class SeoJun extends Namja {
  SeoJun(String name) : super(name);

  @override
  String age() => '$name씨는 22살이다!';

  @override
  String eat() => '$name씨는 햄버거를 먹는다!';
}

mixin Hobby {
  String cook() => '씨는 지금 요리한다!';
  String read() => '씨는 지금 책을 읽는다!';
}

mixin Singer on Namja {
  String sing() => '씨는 지금 노래한다!';
}

class JunHo extends Namja with Hobby, Singer {
  JunHo(String name) : super(name);

  @override
  String age() => '$name씨는 23살이다!';

  @override
  String cook() => '$name ${super.cook()}';
}

void testClasses() {
  KyungSu ks = KyungSu();
  ks.name='도경수';
  print(ks.eat());
  print(ks.say());
  // print(KyungSu().eat());
  // print(KyungSu().gender());
  print(JeeHyun('남지현').eat());
  print(SeoJun('박서준').eat());
  print(JunHo('이준호').cook());
  print(JunHo('이준호').age());
}

main() {
  testClasses();
}
