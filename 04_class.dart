void main() {
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);

  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

  // Idol bts = Idol('BTS', ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']);
  Idol bts = Idol.fromList([
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국'],
    'BTS',
  ]);

  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();

  //getter
  print(blackPink.firstMember);
  print(bts.firstMember);

  //setter
  blackPink.firstMember = '스파이더맨';
  bts.firstMember = '아이언맨';
  print(blackPink.firstMember);
  print(bts.firstMember);
}

class Idol {
  final String name;
  final List<String> members;

  const Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }

  //getter
  String get firstMember {
    return this.members[0];
  }

  //setter
  set firstMember(String name) {
    this.members[0] = name;
  }
}
