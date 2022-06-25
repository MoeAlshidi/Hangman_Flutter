import 'package:flutter/material.dart';
import 'package:hangman/logic/common/colors/custom_colors.dart';

class MyButton extends StatefulWidget {
  final String chr;
  const MyButton({
    Key? key,
    required this.chr,
  }) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  Color buttonColor = MyColors.KscaffoldColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          buttonColor = Colors.black;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: buttonColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade700,
              offset: const Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            const BoxShadow(
                color: Colors.white24,
                offset: const Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1)
          ],
        ),
        child: Text(
          widget.chr,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
