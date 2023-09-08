void main() {
  addNumbers(x: 10, y: 20);
  // addNumbers(10, 20, 30);
  // addNumbers(x: 10, y: 20, z: 30);
}

// 세개의 숫자 (x,y,z)를 더하고 짝수인지 홀수인지 알려주는 함수
// parameter / argument - 매개변수.
// positional parameter - 순서가 중요한 파라미터
// optional parameter - 있어도 되고 없어도 되는 파라미터
// named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)
// arrow function - 화살표 함수
addNumbers({
  required x,
  required y,
  int z = 30,
  // required z,
}) {
  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}
