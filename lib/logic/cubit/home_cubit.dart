import 'package:bloc/bloc.dart';
import 'package:hangman/logic/common/business_logic/alphabetic.dart';
import 'package:hangman/logic/common/business_logic/words.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<String> keyboard = [];
  String chosenWord = '';

  void fillKeyboard() {
    keyboard.clear();
    chosenWord = CustomWords.getRandomWord();
    chosenWord.split('').forEach((chr) {
      keyboard.add(chr);
    });
    while (keyboard.length < 14) {
      String newChr = Alphabetic.getRandomChar();
      if (keyboard.contains(newChr)) {
        continue;
      } else {
        keyboard.add(newChr);
      }
    }
    keyboard.shuffle();
    emit(FillKeyboardSuccess());
  }
}
