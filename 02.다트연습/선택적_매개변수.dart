// 선택적 매개변수
// 생성자에 .을 붙여서 다른이름을 가진 생성자를 만들수 있다.

// Dart 는 오버로딩이 없다. 대신 더 강력한 선택적 매개변수를 이용한다. -> { } 안에 넣는다.
// 선택적 매개변수는 사용할때 매개변수의 순서가 상관없다 !!
// 자동완성시 사용하지 않은 매개변수를 알려주므로 실수의 가능성을 줄여준다.

// 필드가 null 인지는 개발자가 아니까 물음표를 넣어주면 된다.
// 필드가 null 을 허용하지 않는다면 선택적 매개변수 앞에 required 를 붙여준다.

class Person{
  String name;
  // final String name; 변경불가능
  int? age;
  
  Person(this.name, this.age);
  Person.origin({required this.name, this.age});  // 다른이름의 생성자 가능...
  // 중괄호 사용시 선택적 매개변수.. 넣어도 되고 안넣어도 되고 -> null 의 가능성 때문에 에러 -> int에 ? 를 붙여준다
  Person.origin2({required this.name, this.age = 1}); // 기본 디폴트 값을 넣어 줄 수 있다.
}
main(){
  Person p1 = Person.origin(name: "홍길동", age: 10); // 선택적 매개변수는 안넣어도 되는데 이 방식은 순서가 상관없다

  Person p2 = Person.origin(name: "아무개");
}
// 필드에 ? 를 붙이지 않는다면 선택적 매개변수는 required 를 가져야 하고
// 필드가 null 일수도 있다면 ? 를 필드에 붙인다.