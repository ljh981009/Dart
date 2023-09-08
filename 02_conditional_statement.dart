enum Status {
  approved,
  pending,
  rejected,
}

void main() {
  // if문
  int num1 = 5;

  if (num1 % 3 == 0) {
    print('나머지가 0입니다.');
  } else if (num1 % 3 == 1) {
    print('나머지가 1입니다.');
  } else {
    print('나머지가 2입니다.');
  }

  //switch문
  int num2 = 3;

  switch (num2 % 3) {
    case 0:
      print('나머지가 0입니다.');
      break;

    case 1:
      print('나머지가 1입니다.');
      break;

    default:
      print('나머지가 2입니다.');
      break;
  }

  // for loop문
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  // list for loop문
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  //방법1
  int total = 0;

  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  print(total);

  //방법2
  total = 0;

  for (int num3 in numbers) {
    total += num3;
  }
  print(total);

// while loop
  int total2 = 0;

  // 방법1
  while (total2 < 10) {
    total2 += 1;
  }
  print(total2);

  //방법2(거의 사용 X)
  total2 = 0;
  do {
    total2 += 1;
  } while (total2 < 10);

  print(total2);

  // while + if
  int total3 = 0;

  while (total3 < 10) {
    total3 += 1;
    if (total3 == 5) {
      break;
    }
  }
  print(total3);

  total3 = 0;

  for (int i = 0; i < 10; i++) {
    total3 += i;
    if (total3 == 5) {
      break;
    }
  }
  print(total3);

  // continue
  for (int i = 0; i < 10; i++) {
    print(i);
    if (i == 5) {
      continue;
    }
    print(i);
  }

  // enum
  Status status = Status.pending;

  if (status == Status.approved) {
    print('승인입니다.');
  } else if (status == Status.pending) {
    print('대기입니다.');
  } else {
    print('거절입니다.');
  }
}
