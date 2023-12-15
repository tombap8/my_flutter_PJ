void main(List<String> args) {
  final leeFight = ['명량', '한산', '노량'];
  const detail = {'명량': '해전', '한산': '도대첩', '노량': '해전'};
  final subTit = {'명량': null, '한산': '용의 출현', '노량': '죽음의 바다'};

  const aaa = [
    [11, 22, 33],
    [111, 222, 333]
  ];

  const bbb = {
    '조인성': {'나이': 42, '취미': '독서', '사는곳': '강남'}
  };
  print('${aaa[1][2]} 와 ${bbb['조인성']?['나리']??'김치'}');

  final casting = {
    '박해일',
    '변요한',
    '최민식',
    '안성기',
    '최민식',
    '류승룡',
    '조진웅',
    '최민식',
    '김윤석',
    '김명곤',
    '진구',
    '이정현',
    '김윤석',
    '김윤석',
    '백윤식',
    '김윤석',
    '정재영',
    '허준호',
    '김윤석',
    '김성규',
    '이규형',
    '이무생',
    '최덕문',
    '안보현',
    '박명훈',
    '안보현',
    '박훈',
    '문정희'
  };

  showTxt('이순신에 대해 알아볼까요?');
  showTxt('이순신 마지막전투는? ${leeFight[2]} ${detail[leeFight[2]]}');
  showTxt('${leeFight[1]}의 영화 부제목은? ${subTit[leeFight[1]]}');
  showTxt('이순신 영화 시리즈 주요 출연자들: ${actorList(casting.toList())}');
}

void showTxt(var txt) {
  print(txt);
}

String actorList(List list) {
  var temp = '';
  for (var x in list) {
    temp += '😍$x /';
  }
  return temp;
}
