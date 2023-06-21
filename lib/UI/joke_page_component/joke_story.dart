import 'package:flutter/material.dart';
import 'package:joke_story/Service/joke_service.dart';

class MyJokeStory extends StatefulWidget {
  final int jokeIndex;

  MyJokeStory({required this.jokeIndex});

  @override
  State<MyJokeStory> createState() => _MyJokeStoryState();
}

class _MyJokeStoryState extends State<MyJokeStory> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: FutureBuilder(
        future: getJoke(widget.jokeIndex),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              constraints: BoxConstraints(
                minHeight: size.height * 0.2,
              ),
              width: size.width,
              child: Center(
                child: Text(
                  '${snapshot.data!.jokeContent}',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: size.width * 0.05),
                ),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return SizedBox(
                height: size.height * 0.2,
                child: const Center(child: CircularProgressIndicator()));
          } else {
            return Text('Something wrong');
          }
        },
      ),
    );
  }
}
