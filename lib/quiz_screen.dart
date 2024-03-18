import 'package:flutter/material.dart';
import 'package:flutter_quizapp_3/question_modal.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(225, 5, 50, 80),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Simple Quiz App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [_questionWidget(), _answerList(), _nextButton()],
        ),
      ),
    );
  }

  _questionWidget() {
    return Column(
      children: [
        Text(
          'Question ${currentQuestionIndex + 1}/${questionList.length.toString()}',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(32),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            '${questionList[currentQuestionIndex].questionText}',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
        children: questionList[currentQuestionIndex]
            .answersList
            .map(
              (e) => _answerButton(e),
            )
            .toList());
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 2),
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (selectedAnswer == null) {
              if (answer.isCorrect) {
                score++;
              }
            }

            selectedAnswer = answer;
          });
        },
        style: ElevatedButton.styleFrom(
            foregroundColor: isSelected ? Colors.white : Colors.black,
            backgroundColor: isSelected ? Colors.green : Colors.white),
        child: Text(answer.answerText),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    return Container(
      margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.symmetric(vertical: 2),
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          if (isLastQuestion) {
            //display score card
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.blueAccent),
        child: Text(isLastQuestion ? 'Submit' : 'Next'),
      ),
    );
  }

  _showScoreDialog() {
    return AlertDialog(
      title: Text('Score : $score'),
      content: ElevatedButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          Navigator.pop(context);
         setState(() {
            currentQuestionIndex = 0;
          score = 0;
          selectedAnswer = null;
         });
        },
      ),
    );
  }
}
