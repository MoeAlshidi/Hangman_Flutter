import 'dart:math';

class CustomWords {
  static const myWords = ['محمد', "عبدالله", "طلال"];

  static getRandomWord() {
    final random = Random();
    var i = random.nextInt(myWords.length);
    return myWords[i];
  }
}
