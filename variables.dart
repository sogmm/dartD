void main(){
  //보통 local Variable 을 위해 사용, 컴파일러가 자동으로 타입을 추론함
  var a = "hi";
  //a = 34; 불가능. a = hi 한 시점부터 a 의 타입은 string 으로 정해짐.

  //보통 클래스 내의 속성 변수들을 위해 사용
  String b = "hi";  

  //모든 타입으로 변할수 있는 변수, api 응답을 받을때 유용
  dynamic c = "hello";
  c = 34;

  //d 는 nullable 이다. 
  String? d;
  d = "Hello";
  d = null;
  print(d?.isEmpty); //output: null
  // ?. 으로 null이 아닐시에 그 데이터타입으로 부를 수 있는 함수들을 부들 수 있다.
}