import 'package:equatable/equatable.dart';

import '../../Model/joke.dart';

class JokeState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadingJoke extends JokeState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class OutOfJoke extends JokeState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadedJoke extends JokeState {
  Joke joke;

  LoadedJoke({required this.joke});

  @override
  // TODO: implement props
  List<Object?> get props => [joke];
}
