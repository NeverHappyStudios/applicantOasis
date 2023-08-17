import '../models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Fluuter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editior',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Andoid',
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depoend on data'
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more of then: StatelessWidget or StatefulWidget',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above'
    ],
  ),
  QuizQuestion(
    'What happens if you change the data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated'
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
