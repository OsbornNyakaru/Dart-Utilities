int findLargest(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception('List is empty');
  }
  int largest = numbers[0];
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}
