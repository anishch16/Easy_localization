import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'anc_questions.dart';

class QuestionDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question Page'),
        ),
        body: QuestionPage(),
      ),
    );
  }
}

class QuestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ancQuestionList.length,
      itemBuilder: (BuildContext context, int index) {
        final question = ancQuestionList[index];
        return ListTile(
          title: Text(tr((question.text))),
          // Text(tr('Q.Is this the first time visit ?')),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: question.options
                .map(
                  (option) => Text(tr(option.text)),
            )
                .toList(),
          ),
        );
      },
    );
  }
}
