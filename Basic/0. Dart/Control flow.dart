// ignore_for_file: unused_local_variable, dead_code

enum Weather {
    sunny,
    snowy,
    cloudy,
    rainy,
  }


void main() {
  /**************************
      Boolean operators
  ***************************/
  const doesOneEqualTwo = (1 == 2);
  const isOneGreaterThanTwo = (1 > 2);

  const guess = 'dog';
  const dogEqualsCat = guess == 'cat';

  /**************************
      Boolean Logic
  ***************************/
  const isSunny = true;
  const isFinished = true;
  const willGoCycling = isSunny && isFinished;

  const willTravelToAustralia = true;
  const canFindPhoto = false;
  const canDrawPlatypus = willTravelToAustralia || canFindPhoto;


  /**************************
       The if statement
  ***************************/
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else if (animal == 'green') {
    print('Animal is black.');
  } else {
    print('Animal is not a house pet.');
  }


  /**************************
      Switch statements
  ***************************/
  const number = 3;
  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
      break;
    case 4:
      print('four');
      break;
    default:
      print('something else');
  }

  const weather = 'cloudy';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen.');
      break;
    case 'snowy':
      print('Get your skis.');
      break;
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella.');
      break;
    default:
      print("I'm not familiar with that weather.");
  }




  /**************************
           Enum
  ***************************/
  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen.');
      break;
    case Weather.snowy:
      print('Get your skis.');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella.');
      break;
  }




  /**************************
        While loops
  ***************************/

  //while (true) { }

  var sum = 1;
  while (sum < 10) {
    sum += 4;
    print(sum);
  }


  sum = 11;
  while (sum < 10) {
    sum += 4;
  }
  print(sum);




  /**************************
        For loops
  ***************************/
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }


  const myString = 'I ❤ Dart';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }



  /**************************
        For each
  ***************************/
const myNumbers = [1, 2, 3];

myNumbers.forEach((number) => print(number));

myNumbers.forEach((number) {
  print(number);
});

}
