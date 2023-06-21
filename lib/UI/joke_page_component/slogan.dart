import 'package:flutter/material.dart';

class MySlogan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width,
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'A joke a day keeps the doctor away',
            style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.05,
                fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.05),
            child: const Text(
              'If you joke wrong way, your teeth have to pay.(Serious)',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
