import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/question_display.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    context.setLocale(Locale('en'));
                    Get.to(QuestionDisplay());
                  },
                  child: Text('English'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () async {
                    context.setLocale(Locale('ar'));
                    Get.to(QuestionDisplay());
                  },
                  child: Text('Arabic'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
