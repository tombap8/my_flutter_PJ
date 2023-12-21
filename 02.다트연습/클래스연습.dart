// https://theoryof0.tistory.com/117
abstract class Person {
  Person(this.name);

  final String name;
  String sex();
  String age();
  String eat() => '$name eats nothing';
  String say() => '$name says nothing';
}

class John implements Person {
  @override
  String get name => 'John';

  @override
  String sex() => '$name is male';

  @override
  String age() => '$name is 20';

  @override
  String eat() => '$name eats pizza';

  @override
  String say() => '$name says something';
}

class Jane extends Person {
  Jane(String name) : super(name);

  @override
  String sex() => '$name is female';

  @override
  String age() => '$name is 21';
}

abstract class Male extends Person {
  Male(String name) : super(name);

  @override
  String sex() => '$name is a male';
}

class Mike extends Male {
  Mike(String name) : super(name);

  @override
  String age() => '$name is 22';

  @override
  String eat() => '$name eats burger';
}

mixin Hobby {
  String cook() => 'cooks';
  String read() => 'reads';
}

mixin Tenor on Male {
  String sing() => 'sings';
}

class Paul extends Male with Hobby, Tenor {
  Paul(String name) : super(name);

  @override
  String age() => '$name is 23';

  @override
  String cook() => '$name ${super.cook()}';
}

void testClasses() {
  print(John().eat());
  print(Jane('Jane').eat());
  print(Mike('Mike').eat());
  print(Paul('Paul').cook());
}