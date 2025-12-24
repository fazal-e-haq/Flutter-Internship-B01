import 'dart:io';

void main() {
  //Variables and their Datatypes.

  var anyType; // Its store any kind of value
  const value = 2; // Must be initilized
  final name; // Store value only once
  int number; // Store only numbers
  double point; // Store only decimal numbers
  bool istrue; // Store only true or false

  anyType = 'hi';
  name = 'ABS';
  number = 20;
  point = 20.33;
  istrue = true;

  // Now showing each variable in output
  print("Any kind of value : $anyType");
  print("const : $value");
  print("Integer : $number");
  print("final  : $name");
  print("double : $point");
  print("bool : $istrue \n\n");

  // Control Statement (Conditional Statements)
  print('Checking if 2 is greater then 20 or not');
  if (value > number) {
    print(false);
  } else if (value < number) {
    print(true);
  } else {
    print('both are same');
  }

  // Control Statement (Looping Statements)
  print('\nReapting statement using for loop ');
  for (int i = 0; i <= 20; i++) {
    stdout.write(' $i ');
  }

  print('\n\nReapting statement using while loop ');
  while (value < number) {
    number--;
    stdout.write(' $number ');
  }
  print('\n\nAddition of 276 and 543 numbers : ${Sum(276, 543)}');
  print('\nFactorial of 5 : ${factorial(5)}');
  print('\n Is 7 prime number : ${isPrime(7)}');
}

// Function perform Addition.
int Sum(int a, int b) {
  return a + b;
}

// Function perform Factorial of a number.
int factorial(int num) {
  int answer = 1;
  for (int i = 1; i <= num; i++) {
    answer = answer * i;
  }
  return answer;
}

// Function checking prime number

bool isPrime(int num) {
  if (num <= 0) return false;

  for (int i = 2; i < num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
