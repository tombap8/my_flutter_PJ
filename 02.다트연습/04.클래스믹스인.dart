void main(List<String> args) {
  BMW bmw = BMW();

  // Engine e = Engine(); -> 인스턴스 될 수 없음
  Light l = Light();
  print(l.luminosity);

  print(bmw.power);
  print(bmw.wheelName);
  print(bmw.luminosity);


  // 컴포지션으로 다른 클래스 사용하기
  HyunDai h = HyunDai(KEngine());
  print(h.kengine.power);
}

// 믹스인만 사용한 경우 인스턴스화 불가!
mixin Engine{
  int power = 5000;
}
mixin Wheel{
  String wheelName = "4륜 구동 바퀴";
}

// 믹스인에 class 키워드 사용시에만 인스턴스화 가능함
mixin class Light{
  double luminosity = 3000.0;
}

class BMW with Engine, Wheel, Light{

}

// 컴포지션 방법

class KEngine{
  int power = 8000;
}

class HyunDai{
  KEngine kengine;
  HyunDai(this.kengine);
}