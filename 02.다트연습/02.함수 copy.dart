void main(List<String> args) {
  print(ff(6));
  print(ffb(3));
  ffc(() {
    print('나야나!!!');
  });

  ffd(33333);
  ffd('혼자난리야~~!');

  print('구구단 9단은?');
  gugu(9);
}

Function ff = (int a) => a * 1000;

int ffb(int b) {
  return b * 100;
}

void ffc(Function f) {
  f();
}

void ffd(var cc) {
  print(cc);
}

void gugu(int aa) {
  for (var i = 1; i <= 9; i++) {
    print('$aa × $i = ${aa * i}');
  }
}
