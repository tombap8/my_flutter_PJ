
void main() {
  
  var aa = ["하나",2,3.5,true];
  for(var tt in aa){
    print("나는 $tt입니다");
  }
  
  dynamic bb = ['한산','명량','노량'];
  
  Map<String,String> cc = {'노량':'죽음의 바다','한산':'용의 출현'};
  
  
  print(ff(7));
  print('이순신의 최후의 전투는? ${ss(bb[2])}');
  print('이순신의 최대의 전투는? ${ss(bb[0])}');
  print('"아직 12척의 배가 남았습니다!"의 전투는? ${ss(bb[1])}');
  print('영화 ${bb[2]}의 별칭은? ${cc[bb[2]]}');
  
  print('아직 신에게는 ${minus()}척의 배가 있습니다!');
  print('아직 신에게는 ${minus()}척의 배가 있습니다!');
  print('아직 신에게는 ${minus()}척의 배가 있습니다!');
  print('아직 신에게는 ${minus()}척의 배가 있습니다!');
  print('아직 신에게는 ${minus()}척의 배가 있습니다!');
  for(int i =0;i<200;i++){
    mmm();
  }
  
  print('아직 신에게는 ${bbb}척의 배가 있습니다!');
  
  
}

int bbb = 13;

String ss (var tt){
  if(tt=='한산') return "$tt도 대첩";
  else return "$tt 해전";
}
  
int ff (int aa){
  return aa + 4;
}

int minus(){
  return --bbb;
}

void mmm(){
  ++bbb;
}
  
