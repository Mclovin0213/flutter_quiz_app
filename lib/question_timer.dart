import 'dart:async';
import 'package:flutter/material.dart';

class QuestionTimer extends StatefulWidget {
  const QuestionTimer({
    super.key,
    required this.onTimeUp,
    required this.time,
  });

  final Function onTimeUp;
  final int time;

  @override
  State<QuestionTimer> createState() => _QuestionTimerState();
}

class _QuestionTimerState extends State<QuestionTimer> {
  Timer? timer;
  int secondsRemaining = 0;
  double progress = 1.0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void didUpdateWidget(covariant QuestionTimer oldWidget) {
    if (oldWidget.time != widget.time) {
      startTimer();
    }
    super.didUpdateWidget(oldWidget);
  }

  void startTimer() {
    timer?.cancel();
    secondsRemaining = widget.time;
    progress = 1.0;

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        setState(() {
          secondsRemaining--;
          progress = secondsRemaining / widget.time;
        });
      } else {
        timer.cancel();
        widget.onTimeUp();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LinearProgressIndicator(
          value: progress,
          backgroundColor: Colors.grey[300],
          color: Colors.blue,
          minHeight: 10,
        ),
        const SizedBox(height: 10),
        Text(
          'Time left: $secondsRemaining seconds',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
