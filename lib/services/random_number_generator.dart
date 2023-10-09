import 'dart:math';

class RandomNumberGenerator{
  
static int generateNumber(int maxNumber) {
    Random generateNumber = Random(); 
    return generateNumber.nextInt(maxNumber);;
  }
}