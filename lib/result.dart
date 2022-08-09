import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Result extends StatelessWidget {
  final double result;
  final bool isMale;
  final int weight;
  final int age;
  final double height;
  const Result(this.isMale, this.weight, this.age, this.height, this.result);
  String get resultText {
    String strTxt = "";
    if (result >= 30)
      strTxt = "سمين";
    else if (result >= 25 && result < 30)
      strTxt = "وزن زائد نسبيا";
    else if (result >= 18.5 && result < 25)
      strTxt = "مثالي";
    else if (result < 18.5) strTxt = "ضعيف";

    return strTxt;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(exit(0));
                },
                child: Text(
                  "أغلاق",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ))
          ],
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Text(
            "النتائج",
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isMale ? "ذكر   :" : "انثى   :",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "الجنس",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$weight  :",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "الوزن",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$age  :",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "العمر",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "سم",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "${height.round()}  :",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "الطول",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${result.toStringAsFixed(2)}  :",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "النتيجة",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$resultText  :",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "الحالة",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
