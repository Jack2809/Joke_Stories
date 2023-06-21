import '../Model/joke.dart';

Future<dynamic> getJoke(int jokeIndex) {
  List<Joke> jokeList = [
    Joke(id: 1, jokeContent: 'a Joke story 1', isFunny: false),
    Joke(id: 2, jokeContent: 'a Joke story 2', isFunny: false),
    Joke(id: 3, jokeContent: 'a Joke story 3', isFunny: false),
    Joke(id: 4, jokeContent: 'a Joke story 4', isFunny: false),
    Joke(id: 5, jokeContent: 'a Joke story 5', isFunny: false),
    Joke(id: 6, jokeContent: 'a Joke story 6', isFunny: false),
  ];
  var response = Future.delayed(
    const Duration(seconds: 2),
    () {
      if (jokeIndex > jokeList.length - 1) {
        return null;
      }
      return jokeList[jokeIndex];
    },
  );
  return response;
}
