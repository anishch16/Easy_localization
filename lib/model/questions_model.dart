class Option {
  final String text;
  final int next;
  final OptionDialog? dialog;

  Option({required this.text, required this.next, this.dialog});
}

class Question {
  int id;
  final String text;
  final List<Option> options; //for both single and multichoice
  final QuestionType questionType;
  final Option?
      next; //This is for multi-choice only. If its dialog is null go to next.next otherwise dialog.next
  final Option?
      noneOfThem; // This is for multi-choice only. If its dialog is null go to next.next otherwise dialog.next

  Question({
    required this.id,
    required this.text,
    required this.options,
    required this.questionType,
    this.next,
    this.noneOfThem,
  });
}

class OptionDialog {
  final String text;
  final int next;
  final bool showProgress;

  OptionDialog(
      {required this.text, required this.next, this.showProgress = false});
}

enum QuestionType { Single, MultiChoice, Form, ThankYou }
