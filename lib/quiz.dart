import 'package:flutter/material.dart';
import 'package:quiz_app/category_selection.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  var currentQuestions = flutterQuestions;

  void switchScreen() {
    setState(() {
      activeScreen = 'category-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == 6) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void changeQuestionCategory(QuestionCategory category) {
    setState(() {
      switch (category) {
        case QuestionCategory.flutter:
          currentQuestions = flutterQuestions;
        case QuestionCategory.basketball:
          currentQuestions = basketballQuestions;
      }

      activeScreen = 'question-screen';
    });
  }


  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer, questions: currentQuestions,);
    }

    if (activeScreen == 'category-screen') {
      screenWidget = CategorySelection(onCategorySelection: changeQuestionCategory);
    }

    if (activeScreen == "results-screen") {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, onRestart: restartQuiz, questions: currentQuestions,);
    }

    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: screenWidget
        ),
      ),
    );
  }
}
