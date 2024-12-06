void main() {
  String? ss = null;

  //if ss is null, than assign NOT NULL to it
  ss ??= 'NOT NULL';
}

//QQ Operator
//if input is null return ANON, else return Uppercase
String bigger0(String? s) => s?.toUpperCase() ?? 'ANON';
