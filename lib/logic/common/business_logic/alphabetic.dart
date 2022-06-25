import 'dart:math';

class Alphabetic {
  static const alphabetic_list = [
    "أ",
    "ب",
    "ت",
    "ث",
    "ج",
    "ح",
    "خ",
    "د",
    "ذ",
    "ر",
    "ز",
    "س",
    "ش",
    "ص",
    "ض",
    "ط",
    "ظ",
    "ع",
    "غ",
    "ف",
    "ق",
    "ك",
    "ل",
    "م",
    "ن",
    "هـ",
    "و",
    "ي"
  ];
  static getRandomChar() {
    final random = Random();
    var i = random.nextInt(alphabetic_list.length);
    return alphabetic_list[i];
  }
}
