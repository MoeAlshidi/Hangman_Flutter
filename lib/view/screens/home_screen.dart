import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hangman/logic/common/colors/custom_colors.dart';
import 'package:hangman/logic/cubit/home_cubit.dart';
import 'package:hangman/view/widgets/keyboardButton/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => HomeCubit()..fillKeyboard(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text('الرجل المشنوق'),
              centerTitle: true,
            ),
            backgroundColor: MyColors.KscaffoldColor,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    flex: 7,
                    child: Container(
                      color: Colors.white,
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              child: MyButton(
                            chr: "ع",
                          )),
                        ],
                      ),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
