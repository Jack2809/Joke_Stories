import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joke_story/Bloc/joke_bloc/joke_event.dart';
import 'package:joke_story/Bloc/joke_bloc/joke_state.dart';
import 'package:joke_story/Service/joke_service.dart';
import 'package:joke_story/Shared_reference/storage.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  JokeBloc() : super(LoadingJoke()) {
    on<GetJoke>((event, emit) async {
      emit(LoadingJoke());
      var response = await getJoke(event.jokeIndex);
      if (response != null) {
        emit(LoadedJoke(joke: response));
      } else {
        emit(OutOfJoke());
      }
    });

    on<LikeJoke>((event, emit) async {
      emit(LoadingJoke());
      var storage = Storage();
      storage.setFunnyJoke(event.jokeId, true);

      var response = await getJoke(event.jokeIndex);
      if (response != null) {
        emit(LoadedJoke(joke: response));
      } else {
        emit(OutOfJoke());
      }
    });

    on<DisLikeJoke>((event, emit) async {
      emit(LoadingJoke());
      var storage = Storage();
      storage.setFunnyJoke(event.jokeId, false);

      var response = await getJoke(event.jokeIndex);
      if (response != null) {
        emit(LoadedJoke(joke: response));
      } else {
        emit(OutOfJoke());
      }
    });
  }
}
