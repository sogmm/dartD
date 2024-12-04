// b 는 late 상수이기때문에 b 에 함수에서 리턴되는 값을 넣어주면, b가 *사용되는 시점 (9번줄)* 에서 그 함수가 실행됨.
// 클래스 내의 속성이 그냥 final 이면 인스턴스를 만들면서 값을 넣어줘야 하지만, late 라면 인스턴스를 만들고 나서 넣어줘도 됨.

void main(){
  final a = printNReturn(1);
  late final b = printNReturn(2);

  print("Cut");
  var c = b+4;
}


int printNReturn(int i){
  print(i);
  return i;
}