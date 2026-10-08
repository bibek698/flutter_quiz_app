class QuizQuestion {

  QuizQuestion(this.text,this.answers); //constructor function for getting value of text and answers

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answers); // create a copy of list of answers
    shuffledList.shuffle(); // shuffles the newly created list
    return shuffledList;
  }
}