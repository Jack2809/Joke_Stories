import '../Model/joke.dart';

Future<dynamic> getJoke(int jokeIndex) {
  List<Joke> jokeList = [
    Joke(id: 1, jokeContent: 'One of my wife’s third graders was wearing a Fitbit watch, which prompted my wife to ask, “Are you tracking your steps?” “No,” said the little girl. “I wear this for Mommy so she can show Daddy when he gets home', isFunny: false),
    Joke(id: 2, jokeContent: 'Two of my wife’s third graders was wearing a Fitbit watch, which prompted my wife to ask, “Are you tracking your steps?” “No,” said the little girl. “I wear this for Mommy so she can show Daddy when he gets home', isFunny: false),
    Joke(id: 3, jokeContent: 'Three of my wife’s third graders was wearing a Fitbit watch, which prompted my wife to ask, “Are you tracking your steps?” “No,” said the little girl. “I wear this for Mommy so she can show Daddy when he gets home', isFunny: false),
    Joke(id: 4, jokeContent: 'Four of my wife’s third graders was wearing a Fitbit watch, which prompted my wife to ask, “Are you tracking your steps?” “No,” said the little girl. “I wear this for Mommy so she can show Daddy when he gets home', isFunny: false),
    Joke(id: 5, jokeContent: 'Five of my wife’s third graders was wearing a Fitbit watch, which prompted my wife to ask, “Are you tracking your steps?” “No,” said the little girl. “I wear this for Mommy so she can show Daddy when he gets home', isFunny: false),
    Joke(id: 6, jokeContent: 'Six of my wife’s third graders was wearing a Fitbit watch, which prompted my wife to ask, “Are you tracking your steps?” “No,” said the little girl. “I wear this for Mommy so she can show Daddy when he gets home', isFunny: false),
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
