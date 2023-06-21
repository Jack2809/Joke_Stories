import 'package:equatable/equatable.dart';

class JokeEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetJoke extends JokeEvent {
  int jokeIndex;

  GetJoke({required this.jokeIndex});

  @override
  // TODO: implement props
  List<Object?> get props => [jokeIndex];
}

class LikeJoke extends JokeEvent {
  int jokeIndex;
  int jokeId;

  LikeJoke({required this.jokeId, required this.jokeIndex});

  @override
  // TODO: implement props
  List<Object?> get props => [jokeId, jokeIndex];
}

class DisLikeJoke extends JokeEvent {
  int jokeIndex;
  int jokeId;

  DisLikeJoke({required this.jokeId, required this.jokeIndex});

  @override
  // TODO: implement props
  List<Object?> get props => [jokeId, jokeIndex];
}
