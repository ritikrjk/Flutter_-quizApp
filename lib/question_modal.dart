class Question {
  final String questionText;
  final List<Answer> answersList;

  Question({required this.questionText, required this.answersList});
}

class Answer {
  final String answerText;
  final bool isCorrect;
  Answer({required this.answerText, required this.isCorrect});
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question(
    questionText: "Which Company owns flutter ?",
    answersList: [
      Answer(answerText: 'Google', isCorrect: true),
      Answer(answerText: 'Motorola', isCorrect: false),
      Answer(answerText: 'Dell', isCorrect: false),
      Answer(answerText: 'Samsung', isCorrect: false)
    ],
  ));

  list.add(Question(questionText: "What is 2 + 2", answersList: [
    Answer(answerText: '2', isCorrect: false),
    Answer(answerText: '5', isCorrect: false),
    Answer(answerText: '4', isCorrect: true),
    Answer(answerText: '54', isCorrect: false),
  ]));

  list.add(Question(
    questionText: "Which planet is known as the Red Planet?",
    answersList: [
      Answer(answerText: 'Mars', isCorrect: true),
      Answer(answerText: 'Venus', isCorrect: false),
      Answer(answerText: 'Jupiter', isCorrect: false),
      Answer(answerText: 'Saturn', isCorrect: false),
    ],
  ));

  // Question 3
  list.add(Question(
    questionText: "Who wrote 'Romeo and Juliet'?",
    answersList: [
      Answer(answerText: 'William Shakespeare', isCorrect: true),
      Answer(answerText: 'Charles Dickens', isCorrect: false),
      Answer(answerText: 'Jane Austen', isCorrect: false),
      Answer(answerText: 'Mark Twain', isCorrect: false),
    ],
  ));

  // Question 4
  list.add(Question(
    questionText: "What is the capital city of France?",
    answersList: [
      Answer(answerText: 'London', isCorrect: false),
      Answer(answerText: 'Paris', isCorrect: true),
      Answer(answerText: 'Berlin', isCorrect: false),
      Answer(answerText: 'Madrid', isCorrect: false),
    ],
  ));

  // Question 5
  list.add(Question(
    questionText: "What is the chemical symbol for water?",
    answersList: [
      Answer(answerText: 'H2O', isCorrect: true),
      Answer(answerText: 'CO2', isCorrect: false),
      Answer(answerText: 'O2', isCorrect: false),
      Answer(answerText: 'H2SO4', isCorrect: false),
    ],
  ));

  // Question 6
  list.add(Question(
    questionText: "Which country is known as the Land of the Rising Sun?",
    answersList: [
      Answer(answerText: 'China', isCorrect: false),
      Answer(answerText: 'Japan', isCorrect: true),
      Answer(answerText: 'India', isCorrect: false),
      Answer(answerText: 'Australia', isCorrect: false),
    ],
  ));

  // Question 7
  list.add(Question(
    questionText: "What is the largest mammal?",
    answersList: [
      Answer(answerText: 'Elephant', isCorrect: false),
      Answer(answerText: 'Blue Whale', isCorrect: true),
      Answer(answerText: 'Giraffe', isCorrect: false),
      Answer(answerText: 'Hippopotamus', isCorrect: false),
    ],
  ));

  // Question 8
  list.add(Question(
    questionText: "What is the boiling point of water in Celsius?",
    answersList: [
      Answer(answerText: '100°C', isCorrect: true),
      Answer(answerText: '0°C', isCorrect: false),
      Answer(answerText: '50°C', isCorrect: false),
      Answer(answerText: '200°C', isCorrect: false),
    ],
  ));

  // Question 9
  list.add(Question(
    questionText: "Who painted the Mona Lisa?",
    answersList: [
      Answer(answerText: 'Vincent van Gogh', isCorrect: false),
      Answer(answerText: 'Pablo Picasso', isCorrect: false),
      Answer(answerText: 'Leonardo da Vinci', isCorrect: true),
      Answer(answerText: 'Michelangelo', isCorrect: false),
    ],
  ));

  // Question 10
  list.add(Question(
    questionText: "What is the square root of 16?",
    answersList: [
      Answer(answerText: '2', isCorrect: false),
      Answer(answerText: '4', isCorrect: true),
      Answer(answerText: '8', isCorrect: false),
      Answer(answerText: '16', isCorrect: false),
    ],
  ));

  return list;
}
