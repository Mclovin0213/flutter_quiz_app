import 'package:quiz_app/models/quiz_question.dart';

enum QuestionCategory {
  flutter,
  basketball,
  movies
}

const flutterQuestions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
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

const basketballQuestions = [
  QuizQuestion(
    'How many players are on the court for each team in a standard basketball game?',
    [
      'Five',
      'Six',
      'Seven',
      'Four',
    ],
  ),
  QuizQuestion('What is the duration of an NBA game?', [
    '48 minutes',
    '40 minutes',
    '60 minutes',
    '52 minutes',
  ]),
  QuizQuestion(
    'What is the primary role of a point guard?',
    [
      'To distribute the ball and run the offense',
      'To block shots and protect the rim',
      'To score the most points',
      'To defend the opposing team’s best player',
    ],
  ),
  QuizQuestion(
    'Which position is typically responsible for guarding the opposing team’s center?',
    [
      'Center',
      'Point guard',
      'Shooting guard',
      'Small forward',
    ],
  ),
  QuizQuestion(
    'What happens when a player accumulates six fouls in an NBA game?',
    [
      'The player is fouled out and cannot return',
      'The player can only shoot free throws',
      'The player receives a technical foul',
      'The team loses a point',
    ],
  ),
  QuizQuestion(
    'How many points is a shot worth from beyond the three-point line?',
    [
      'Three',
      'Two',
      'One',
      'Four',
    ],
  ),
];

const movieQuestions = [
  QuizQuestion(
    'Who directed the movie "Inception"?',
    [
      'Christopher Nolan',
      'Steven Spielberg',
      'James Cameron',
      'Martin Scorsese',
    ],
  ),
  QuizQuestion(
    'Which movie won the Academy Award for Best Picture in 2020?',
    [
      'Parasite',
      '1917',
      'Joker',
      'Once Upon a Time in Hollywood',
    ],
  ),
  QuizQuestion(
    'What is the highest-grossing movie of all time as of 2023?',
    [
      'Avatar: The Way of Water',
      'Avengers: Endgame',
      'Titanic',
      'Star Wars: The Force Awakens',
    ],
  ),
  QuizQuestion(
    'Which film franchise features the characters Luke Skywalker, Darth Vader, and Princess Leia?',
    [
      'Star Wars',
      'Star Trek',
      'Lord of the Rings',
      'The Matrix',
    ],
  ),
  QuizQuestion(
    'What is the fictional African country in "Black Panther"?',
    [
      'Wakanda',
      'Zamunda',
      'Genosha',
      'Latveria',
    ],
  ),
  QuizQuestion(
    'Who played the role of "The Joker" in The Dark Knight?',
    [
      'Heath Ledger',
      'Joaquin Phoenix',
      'Jared Leto',
      'Jack Nicholson',
    ],
  ),
];


