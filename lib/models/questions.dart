class QuizQuestion{
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

    List<String> getShuffledAnswers() {
    final shuffeledAnswers = List.of(answers);
    shuffeledAnswers.shuffle(); //since shuffle func mutates list, we assign it to new list
    return shuffeledAnswers;
  }
}