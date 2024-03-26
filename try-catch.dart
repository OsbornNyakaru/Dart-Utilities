void catchError() {
  try {
    // Code that may throw an exception
    throw Exception('This is an exception');
  } catch (e) {
    print('Error caught: $e');
  }
}
