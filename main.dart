import 'dart:io';

// Task 1: Function to sum two numbers
int sum(int a, int b) {
    return a + b;
}

// Task 2: Print numbers from 1 to 10 using a for loop
void printNumbers() {
    print('Numbers from 1 to 10:');
    for (int i = 1; i <= 10; i++) {
        print(i);
    }
}

// Task 3: Use a switch statement to check different string values
void checkString(String value) {
    print('Checking string value: $value');
    switch (value) {
        case 'A':
            print('Value is A');
            break;
        case 'B':
            print('Value is B');
            break;
        case 'C':
          print('Value is C');
          break;
        case 'D':
          print('Value is D');
          break;
        case 'E':
          print('Value is E');
          break;
        case 'F':
          print('Value is F');
          break;
        case 'G':
          print('Value is G');
          break;
        default:
            print('Value is neither A nor B');
    }
}

// Task 4: Print numbers from 20 to 10 using a while loop
void printNumbersReverse() {
    print('Numbers from 20 to 10:');
    int i = 20;
    while (i >= 10) {
        print(i);
        i--;
    }
}

// Task 5: Check if a number is even or odd using an if-else statement
void checkEvenOdd(int number) {
    print('Checking if $number is even or odd:');
    if (number % 2 == 0) {
        print('$number is even');
    } else {
        print('$number is odd');
    }
}

// Task 6: Find the largest number in a list
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

// Task 7: Use a try-catch block to catch an exception
void catchError() {
    print('Trying to catch an exception:');
    try {
        // code that may throw an exception
        throw Exception('This is an exception');
    } catch (e) {
        print('Error caught: $e');
    }
}

// Main function to test all tasks
void main() {
    // Task 1: Function to sum two numbers
    print('Task 1: Sum of 78 and 90 is ${sum(78, 90)}\n');

    // Task 2: Print numbers from 1 to 10 using a for loop
    printNumbers();
    print('');

    // Task 3: Use a switch statement to check different string values
    checkString('A');
    checkString('B');
    checkString('C');
    print('');

    // Task 4: Print numbers from 20 to 10 using a while loop
    printNumbersReverse();
    print('');

    // Task 5: Check if a number is even or odd using an if-else statement
    checkEvenOdd(9);
    checkEvenOdd(10);
    print('');

    // Task 6: Takes a list of numbers as input and outputs the largest number on the list
    // Input list of numbers
    print('Enter numbers separated by space:');
    String input = stdin.readLineSync()!;
    
    // Convert input string to list of integers
    List<int> numbers = input.split(' ').map((String num) => int.parse(num)).toList();
    
    try {
        // Find the largest number in the list
        int largestNumber = findLargest(numbers);
        print('The largest number in the list is: $largestNumber');
    } catch (e) {
        print('Error: $e');
    }

    // Task 7: Use a try-catch block to catch an exception
    catchError();
}
