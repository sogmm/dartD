void main() {
  var list1 = [for (int i = 0; i < 51; i++) i * 2];
  int result = sumUp(list1, 0);
  print(result);
}

int sumUp(List<int> list, int i) {
  if (i == list.length) return 0;

  return list[i] + sumUp(list, i + 1);
}
