void main() {
  foo('FIrst', fourth: 55); //FIrst, null, -1, 55
}

void foo(
  //중괄호 밖에 있는건 positional parameter. 무조건 그 자리 그 위치에 값을 넣어야함.
  String first, {
  //named parameter 를 위해서 중괄호 쳐야함.
  String? second, //nullable parameter
  int third = -1, //default value
  required fourth, //required. 이 값 안넣으면 컴파일 안됨.
}) {
  print('$first, $second, $third, $fourth');
}

//optional positional parameter
void bar(String first, [String? second = 'hihi']) => print('$first, $second');

//fat arrow syntax
int plus(int a, int b) => a + b;
