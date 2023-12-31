import 'package:flutter/material.dart';
import 'package:joke_story/Service/joke_service.dart';

class CopyRight extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left:16.0,right: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: Colors.grey,
          ),
          Container(
            constraints: BoxConstraints(
            ),
            width: size.width,
            child: Text(
              'this app is created as part of Hlsolutions program.The materials contained'
              'on this website provided for general information only and'
              'do not constitude any form of advive. HLS assumes no responsibility'
              ' for the accuracy of any particular statement and accepts no liability'
              ' for any loss of damage which may arise from reliance on the'
              ' information contained on the site.',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: size.width * 0.03),
              textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:2.0),
            child: Center(
              child: Text('Copyright 2021 HLS',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: size.width * 0.04),
              ),
            ),
          )
        ],
      ),
    );
  }
}
