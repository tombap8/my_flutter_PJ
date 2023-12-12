void main(List<String> args) {
  var myHome = "내집이야~!";
  print(myHome);
  // var는 처음에 할당한 값의 형으로 재할당해야함!
  // myHome = 32;
  myHome = "너의집도 크다!";
  print(myHome);



  // 다트언어는 변수의 형을 선언함이 기본이다!
  // 1. 숫자형 : 
  // int - 정수 / double - 실수 / num - 정수/실수
  int number1 = 2023;
  // number1 = 3.2;
  // number1 = '하하'; 
  //-> 처음 선언한 형으로만 할당가능!
  print(number1);

  // 숫자형도 정수형과 실수형을 철저히 구분함!
  double number2 = 7;
  number2 = 3.14;
  print('원주율값은 '+number2.toString());

  num number3 = 100;
  number3 = 7.84;
  print(number3);

  // 2. 문자형 : String
  String name = "톰 행크스";
  // name = 88;
  print("나는 "+name+"입니다!");

  // 3. 불린형 : bool
  bool isTrue = true;
  print(isTrue);

  // 4. 콜렉션 : 묶음데이터
  // List / Set / Map
  // 4-1. List 형 - 배열과 유사함
  List<String> we = ['너','나','우리'];
  print(we[2]+'는 모두 친구입니다!');
  print(we.length);

  // 4-2. Set형 - 순서가 없고 중복되지 않는 데이터집합
  Set<int> evens = {2,4,6,8,10};
  print(evens);

  // 4-3. Map형 - 데이터에 라벨링된 데이터 집합(객체와 유사)
  Map<String,String> actor = {"이름":"강동원","나이":"40"};
  print(actor);

  // [형변환(Casting)] : 특정형에서 다른 형으로 변환하는 것(캐스팅이라고도 함)
  // 일반적인 형변환 : 변수형.parse(대상변수) 
  // -> 특히 숫자일때는 작은것에서 큰것으로 변환함
  // 문자형 형변환 메서드 : 변수.toString()
  String stNum = "777";
  print("문자형 숫자:"+stNum);

  num result = 111 + int.parse(stNum);
  // 숫자로 형변환
  print(stNum+"에 111을 더한 결과는?"+result.toString());




}