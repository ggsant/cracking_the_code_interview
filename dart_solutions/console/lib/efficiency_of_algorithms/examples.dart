import 'dart:math';

void main(List<String> args) {
  final array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(sortListAndElements(['Gabriela', 'Rafaela', 'Monica']));

  sumAndProductOfAnArray(array);
  printPairs([1, 2]);
  printUnorderedPairs([1, 2, 3]);
  printUnorderedPairsWithDoubleArray([1, 2, 3], [4, 5, 6]);
  printUnorderedPairsWithDoubleArrayAndThreeLoops([1, 2, 3], [4, 5, 6]);
  reverse(array);
  print(isPrime(3));
  print(factorial(3));
  permutation('Gabriela');
  print(fibonacci(10));
  allFibonacci(10);
}

void sumAndProductOfAnArray(List<int> array) {
  int sum = 0;
  int product = 1;

  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  }

  for (var i = 0; i < array.length; i++) {
    product += array[i];
  }

  print('Sum: $sum and product: $product');
}

void printPairs(List<int> array) {
  for (var i = 0; i < array.length; i++) {
    for (var j = 0; j < array.length; j++) {
      print('${array[i]}, ${array[j]}');
    }
  }
}

void printUnorderedPairs(List<int> array) {
  for (var i = 0; i < array.length; i++) {
    for (var j = i + 1; j < array.length; j++) {
      print('${array[i]}, ${array[j]}');
    }
  }
}

void printUnorderedPairsWithDoubleArray(List<int> array1, List<int> array2) {
  for (var i = 0; i < array1.length; i++) {
    for (var j = 0; j < array2.length; j++) {}
  }
}

void printUnorderedPairsWithDoubleArrayAndThreeLoops(List<int> array1, List<int> array2) {
  for (var i = 0; i < array1.length; i++) {
    for (var j = 0; j < array2.length; j++) {
      for (var k = 0; k < 10; k++) {
        print('${array1[i]}, ${array2[j]}');
      }
    }
  }
}

void reverse(List<int> array) {
  for (var i = 0; i < array.length / 2; i++) {
    int other = array.length - i - 1;
    int temp = array[i];
    array[i] = array[other];
    array[other] = temp;
  }
}

bool isPrime(int n) {
  for (var i = 2; i < sqrt(n); i++) {
    if (n % i == 0) {
      return false;
    }
  }

  return true;
}

int factorial(int n) {
  if (n < 0) {
    return -1;
  } else if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void permutation(String string) {
  permutationHelper(string, '');
}

void permutationHelper(String string, String prefix) {
  if (string.isEmpty) {
    print(prefix);
  } else {
    for (var i = 0; i < string.length; i++) {
      String rem = string.substring(0, i) + string.substring(i + 1);
      permutationHelper(rem, prefix + string[i]);
    }
  }
}

int fibonacci(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 0) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void allFibonacci(int n) {
  for (var i = 0; i < n; i++) {
    print('$i: ${fibonacci(i)}');
  }
}

// S is string length and A is array length
List<String> sortListAndElements(List<String> array) {
  List<String> sortedArray = [];
  for (var i = 0; i < array.length; i++) {
    // a
    final stringArray = array[i].split('');
    stringArray.sort(); // (s * Log(s))
    sortedArray.add(stringArray.join());
  }

  sortedArray.sort(); // (a * Log(a))

  return sortedArray;
}
