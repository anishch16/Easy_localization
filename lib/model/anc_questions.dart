import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_demo/model/questions_model.dart';

var ancQuestionList = [
  Question(
      id: 1,
      text: tr('Q.Is this the first time visit ?'),
      options: [
        Option(text: 'yes', next: 4,),
        Option(text: 'no', next: 2)
      ],
      questionType: QuestionType.Single),
  Question(
      id: 2,
      text: 'any questions',
      options: [Option(text: 'yes', next: 4), Option(text: 'no', next: 3)],
      questionType: QuestionType.Single),
];
