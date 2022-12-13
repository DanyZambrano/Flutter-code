void main() {


  print('Hola, Mundo!');


  /**************************
           Immutable
  ***************************/ 

  //CONST
  const bool yes = true;
  const int myInteger1 = 10;
  const double myDouble1 = 3.14;
  print("valores: ${myInteger1} y ${myDouble1} y ${yes}");

  //FINAL 
  final int myInteger2 = 10;
  final double myDouble2 = 3.14;
  print("valores: ${myInteger2} y ${myDouble2}");



  /**************************
        Casting down
  ***************************/ 

  num someNumber = 3;
  final someDouble3 = someNumber.toDouble();
  print("someDouble: ${someDouble3}");



 /**************************
        Multi-line strings
  ***************************/ 

  const bigString = '''
  You can have a string
  that contains multiple
  lines
  by
  doing this.''';
  print(bigString);

  const twoLines = 'This is\ntwo lines.';
  print(twoLines);


 /*****************************************
    Inserting characters from their codes
  ****************************************/ 
  print('I \u2764 Dart\u0021');



}
