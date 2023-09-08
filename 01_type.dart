void main() {
// variable : 같은 scope 안에서 재선언 불가능
  var name = '가나다';
  print(name);

// 정수(integer)
  int num1 = 10;
  print(num1);

//실수(double)
  double num2 = 2.5;
  print(num2);

// 참/거짓(boolean)
  bool isTrue = true;
  bool isFalse = false;
  print(isTrue);
  print(isFalse);

// 문자열(string)
  String name2 = '가나다';
  String name3 = '라마바';
  print(name2);
  print(name3);
  print(name2 + name3);
  print('${name2} ${name3}');
  print('$name2 $name3');

  //var String
  var name4 = '가나다';
  var num4 = 20;
  print(name4.runtimeType);
  print(num4.runtimeType);

  // Map<String, Map<int, List<double>>> testType = {}; => var testType={};

  //dynamic : 변수 값 자유롭게 변경 가능
  dynamic name5 = '가나다';
  print(name5);
  dynamic num5 = 1;
  print(num5);
  print(name5.runtimeType);
  print(num5.runtimeType);

  name5 = true;
  print(name5);

//nullable - null이 될 수 있다.
//non-nullalble - null이 될 수 없다.
// null - 아무런 값도 있지 않다.

  String name6 = '가나다';
  print(name6);

// name6=null; // null 될 수 없음

// ? : null 값일 수도 있다
  String? name7 = '라마바';
  print(name7);

//! : null 값이 아니다.
  String name8 = '라마바';
  print(name8);
  // print(name8!);

// final : 값 선언 시 변경 불가, 타입 생략 가능
  final String name9 = '가나다';
// final name9 = '가나다';

// name9 = '라마바'; // 재선언 불가능
  print(name9);

//const : 값 선언 시 변경 불가, 타입 생략 가능
  const String name10 = '라마바';
// const name10 = '라마바';
  print(name10);

  //datetime
  DateTime now = DateTime.now(); // 코드가 실행되는 순간의 시간
  print(now);
  // final DateTime now2 = DateTime.now(); // 빌드 타임의 값을 몰라도 됨
  // const DateTime now3 = DateTime.now(); // 빌드 타임의 값을 알아야 함

  //operator
  int num6 = 2;
  print(num6);
  print(num6 + 2);
  print(num6 - 2);
  print(num6 * 2);
  print(num6 / 2);

  print('-----------------');

  print(num6 % 2);
  print(num6 % 3);
  print(num6);

  print('-----------------');

  num6++;
  print(num6);
  num6--;
  print(num6);

  print('-----------------');

  double num7 = 4.0;
  print(num7);

  num7 += 1;
  print(num7);

  num7 -= 1;
  print(num7);

  num7 *= 2;
  print(num7);

  num7 /= 2;
  print(num7);

  //null operator
  double? num8 = 4.0;
  print(num8);
  num8 = 2.0;
  print(num8);
  num8 = null;
  print(num8);

  //?? :왼쪽값이 null이면 오른쪽 값으로 변경
  num8 ??= 3.0;
  print(num8);

//compare operator
  int num9 = 1;
  int num10 = 2;

  print(num9 > num10);
  print(num9 < num10);
  print(num9 >= num10);
  print(num9 <= num10);
  print(num9 == num10);
  print(num9 != num10);

//type operator
  int num11 = 1;
  // ignore: unnecessary_type_check
  print(num11 is int);
  print(num11 is String);
  // print(num11 is! int);
  print(num11 is! String);

  //logical operator
  // && : 둘다 true(AND 조건)
  bool result = 12 > 10 && 1 > 0;
  print(result); //true
  bool result2 = 12 > 10 && 0 > 1;
  print(result2); // false

  // || : 둦 중 한개라도 true이면 true(OR 조건)
  bool result3 = 12 > 10 || 1 > 0;
  print(result3); //true
  bool result4 = 12 > 10 && 0 > 1;
  print(result4); // true
  bool result5 = 12 < 10 && 0 > 1;
  print(result5); // false

  //List
  List<String> english = ['a', 'b', 'c', 'd'];
  List<int> numbers = [1, 2, 3, 4];

  print(english);
  print(numbers);

  // index(순서) : 0부터 시작
  // print(english[0]); // a
  // print(english[1]); // b
  // print(english[5]); // error

  print(english.length); // 리스트의 길이
  print(english.indexOf('c')); // 리스트 내 특정값의 순서
  english.add('e'); // 리스트 값 추가
  print(english);

  english.remove('e'); // 리스트 값 제거
  print(english);

  // Map
  Map<String, String> dictionary = {
    'Harry Potter': '해리포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저',
  };
  print(dictionary);

  Map<String, bool> isHarryPotter = {
    'Harry Potter': true,
    'Ron Weasley': true,
    'Ironman': false,
  };
  print(isHarryPotter);

// Dictionary
// 추가
  isHarryPotter.addAll({
    'Spiderman': false,
  });
  print(isHarryPotter);

  isHarryPotter['Hulk'] = false;
  print(isHarryPotter);

// 조회
  print(isHarryPotter['Ironman']);

// 수정
  isHarryPotter['Spiderman'] = true;
  print(isHarryPotter);

// 삭제
  isHarryPotter.remove('Harry Potter');
  print(isHarryPotter);

  print(isHarryPotter.keys); //key
  print(isHarryPotter.values); //value

  //Set : 중복 자동 처리
  final Set<String> names = {
    '가',
    '나',
    '다',
  };
  print(names);

  names.add('라');
  print(names);

  names.remove('라');
  print(names);

  print(names.contains('가'));
}
