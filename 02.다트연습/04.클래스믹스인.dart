void main(List<String> args) {
  Tesla tesla = new Tesla('테슬라', 'Model3', 6350.0);

  // Engine e = Engine(); -> 인스턴스 될 수 없음
  Light l = Light();
  print(l.luminosity);

  print(tesla.compName);
  print(tesla.model);
  print(tesla.price.toString() + '원');
  print(tesla.power);
  print(tesla.wheelName);
  print(tesla.luminosity);

  // 컴포지션으로 다른 클래스 사용하기
  HyunDai h = HyunDai(K_Engine());
  print(h.k_engine.power);
}

/********************************************************** 
  [다트 Mixin]
  1. 다중 상속이 필요할 때 Mixin을 사용함
  2. Mixin은 다른 코드에 더해질 목적으로 만들어진 클래스임.
  3. with 키워드는 클래스에 Mixin 클래스를 사용할때 씀.
 **********************************************************/

// 믹스인만 사용한 경우 인스턴스화 불가!
mixin Engine {
  int power = 5000;
}
mixin Wheel {
  String wheelName = "4륜 구동 바퀴";
}

// 믹스인에 class 키워드 사용시에만 인스턴스화 가능함
mixin class Light {
  double luminosity = 3000.0;
}

class Tesla with Engine, Wheel, Light {
  final String compName;
  final String model;
  final double price;
  double distance = 480.0;
  Tesla(this.compName, this.model, this.price);
}

// 컴포지션 방법

class K_Engine {
  int power = 8000;
  double distance = 500.0;
}

class HyunDai {
  K_Engine k_engine;
  HyunDai(this.k_engine);
}
