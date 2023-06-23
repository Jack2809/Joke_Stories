import 'package:flutter/material.dart';

class MyButtonBar extends StatefulWidget {
  final VoidCallback likeJoke;
  final VoidCallback dislikeJoke;

  MyButtonBar({required this.likeJoke, required this.dislikeJoke});

  @override
  State<MyButtonBar> createState() => _MyButtonBarState();
}

class _MyButtonBarState extends State<MyButtonBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.blueAccent),
          child: TextButton(
              onPressed: widget.likeJoke,
              child: Text(
                'This is Funny!',
                style: TextStyle(color: Colors.white),
              )),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.green),
          child: TextButton(
              onPressed: widget.dislikeJoke,
              child: Text(
                'This is not Funny.',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ],
    );
  }
}
