import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height * 0.1,
        width: size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                'Joke Stories',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.05),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: SizedBox(
                height: size.height * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Handicrafted by',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    const Text(
                      'Jim HLS',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.contentapi.ea.com/content/dam/legacy/ea/www-pvzgw2/news/2016/march/PVZGW2-stuffy-sunflower-March22-web.jpg.adapt.crop16x9.575p.jpg'),
              radius: 30,
            ),
          ],
        ));
  }
}
