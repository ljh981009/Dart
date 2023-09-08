void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니'];

  print(blackPink);
  print(blackPink.asMap());
  print(blackPink.toSet());

  Map blackPinkMap = blackPink.asMap();

  print(blackPinkMap.keys);
  print(blackPinkMap.values);

  Set blackPinkSet = Set.from(blackPink);
  print(blackPinkSet.toList());

  final newBlackPink = blackPink.map((x) {
    return '블랙핑크 $x';
  });
  print(blackPink);
  print(newBlackPink.toList());

  final newBlackPink2 = blackPink.map((x) => '블랙핑크 $x');
  print(newBlackPink2.toList());

  print(blackPink == blackPink);
  print(newBlackPink == blackPink);
  print(newBlackPink == newBlackPink2);

  // [1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]
  String number = '13579';
  final parsed = number.split('').map((x) => '$x.jpg').toList();
  print(parsed);

  Map<String, String> harryPotter = {
    'Harry Potter': "해리 포터",
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저'
  };

  final result = harryPotter.map(
    (key, value) => MapEntry(
      'Harry Portter Character $key',
      '해리포터 캐릭터 $value',
    ),
  );

  print(harryPotter);
  print(result);

  final keys = harryPotter.keys.map((x) => 'HPC $x').toList();
  final values = harryPotter.values.map((x) => '해리포터 $x').toList();

  print(keys);
  print(values);

  // Set
  Set blackPinkSet2 = {
    '로제',
    '지수',
    '제니',
    '리사',
  };

  final newSet = blackPinkSet2.map((x) => '블랙핑크 $x').toSet();
  print(newSet);

  // where : 필터링
  List<Map<String, String>> people = [
    {
      'name': '로제',
      'group': '블랙핑크',
    },
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': '뷔',
      'group': 'BTS',
    },
    {
      'name': 'RM',
      'group': 'BTS',
    },
  ];

  print(people);

  final blackPink2 = people.where((x) => x['group'] == '블랙핑크').toList();
  final bts = people.where((x) => x['group'] == 'BTS').toList();
  print(blackPink2);
  print(bts);

  // reduce
  List<int> numbers = [1, 3, 5, 7, 9];

  numbers.reduce((prev, next) {
    print('-----------------');
    print('previous : $prev');
    print('next : $next');
    print('total : ${prev + next}');

    return prev + next;
  });

  print(result);

  List<String> words = ['안녕하세요 ', '저는 ', '코드팩토리입니다. '];

  final sentence = words.reduce((prev, next) => prev + next);
  // words.reduce((prev, next) => prev.length + next.length); // reduce는 선언해준 값과 같은 타입의 값만 가능
  print(sentence);

  // fold
  //  final sum = numbers.fold<int>(0, (prev, next) =>prev+next);
  final sum = numbers.fold<int>(0, (prev, next) {
    print('--------------');
    print('previous : $prev');
    print('next : $next');
    print('total : ${prev + next}');

    return prev + next;
  });
  print(sum);

  final sentence2 = words.fold<String>('', (prev, next) => prev + next);
  print(sentence2);

  final count = words.fold<int>(0, (prev, next) => prev + next.length);
  print(count);

  // cascading operator
  // ...
  List<int> even = [
    2,
    4,
    6,
    8,
  ];
  List<int> odd = [
    1,
    3,
    5,
    7,
  ];

  print([...even, ...odd]);
  print(even);
  print([...even]);
  print(even == [...even]); //false

  print(people);

  final parsedPeople = people
      .map((x) => Person(
            name: x['name']!,
            group: x['group']!,
          ))
      .toList();

  print(parsedPeople);

  for (Person person in parsedPeople) {
    print(person.name);
    print(person.group);
  }

  final bts2 = parsedPeople.where((x) => x.group == 'BTS');

  print(bts2);

  final result2 = people
      .map((x) => Person(
            name: x['name']!,
            group: x['group']!,
          ))
      .where((x) => x.group == 'BTS');

  print(result2);
}

class Person {
  final String name;
  final String group;

  Person({
    required this.name,
    required this.group,
  });

  @override
  String toString() {
    return 'Person(name:$name, group:$group)';
  }
}
