void main() {
  const input = 12;
  final output = compliment(input);
  print(output);

  helloPersonAndPet('Fluffy', 'Chris');

  withinTolerance(9, min: 7, max: 11);

  print(multiply(2, 3));

  final triple = applyMultiplier(3);
  print(triple(6));
  print(triple(14.0));


  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  print(counter);


  final counter1 = countingFunction();
  final counter2 = countingFunction();
  print(counter1()); 
  print(counter2());

  print(multiply(2, 3));


}



  /**************************
        Fucntions
  ***************************/
  String compliment(int number) {
    return '$number is a very nice number.';
  }

  void helloPersonAndPet(String person, String pet) {
    print('Hello, $person, and your furry friend, $pet!');
  }

  bool withinTolerance(int value, {int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }


  /**************************
      Anonymous functions
  ***************************/
  final multiply = (int a, int b) {
    return a * b;
  };

  //retruning a function
  Function applyMultiplier(num multiplier) {
    return (num value) {
      return value * multiplier;
    };
  }


  /**************************
      Closures

      Anonymous functions in Dart act as what are known as closures. 
      The term closure means that the code “closes around” the surrounding scope, 
      and therefore has access to variables and functions defined within that scope.
  ***************************/

    var counter = 0;
    final incrementCounter = () {
      counter += 1;
    };


    Function countingFunction() {
      var counter = 0;
      final incrementCounter = () {
        counter += 1;
        return counter;
      };
      return incrementCounter;
    }



  /**************************
       Arrow functions
  ***************************/
  final multiply2 = (int a, int b) => a * b;


