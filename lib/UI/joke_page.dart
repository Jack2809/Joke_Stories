import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joke_story/Bloc/joke_bloc/joke_event.dart';
import 'package:joke_story/Bloc/joke_bloc/joke_state.dart';
import 'package:joke_story/Shared_reference/storage.dart';
import 'package:joke_story/UI/joke_page_component/navbar.dart';
import 'package:joke_story/UI/joke_page_component/slogan.dart';
import '../Bloc/joke_bloc/joke_bloc.dart';
import 'joke_page_component/button_bar.dart';

class JokePage extends StatefulWidget {
  @override
  State<JokePage> createState() => _JokePageState();
}

class _JokePageState extends State<JokePage> {
  @override
  void initState() {
    super.initState();
    context.read<JokeBloc>().add(GetJoke(jokeIndex: jokeIndex));
  }

  int jokeIndex = 0;

  late int jokeId;

  void likeJoke() {
    setState(() {
      jokeIndex++;
    });
    context
        .read<JokeBloc>()
        .add(LikeJoke(jokeIndex: jokeIndex, jokeId: jokeId));
  }

  void dislikeJoke() {
    setState(() {
      jokeIndex++;
    });
    context
        .read<JokeBloc>()
        .add(DisLikeJoke(jokeId: jokeId, jokeIndex: jokeIndex));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            MyNavigationBar(),
            MySlogan(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: BlocBuilder<JokeBloc, JokeState>(
                builder: (context, state) {
                  if (state is LoadingJoke) {
                    return SizedBox(
                      height: size.height * 0.2,
                      child: const Center(child: CircularProgressIndicator()),
                    );
                  } else if (state is LoadedJoke) {
                    jokeId = state.joke.id;
                    return Container(
                      constraints: BoxConstraints(
                        minHeight: size.height * 0.2,
                      ),
                      width: size.width,
                      child: Center(
                        child: Text(
                          state.joke.jokeContent,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: size.width * 0.05),
                        ),
                      ),
                    );
                  } else if (state is OutOfJoke) {
                    return Container(
                      constraints: BoxConstraints(
                        minHeight: size.height * 0.2,
                      ),
                      width: size.width,
                      child: Center(
                        child: Text(
                          'That\'s all the jokes for today! Come back another day!',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: size.width * 0.05),
                        ),
                      ),
                    );
                  } else {
                    return const Text('Something wrong');
                  }
                },
              ),
            ),
            MyButtonBar(likeJoke: likeJoke, dislikeJoke: dislikeJoke),
          ],
        ),
      ),
    );
  }
}
