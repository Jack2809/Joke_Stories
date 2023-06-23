import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left:16.0 ,right: 16.0),
      child: SizedBox(
          height: size.height * 0.1,
          width: size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.1,
                width:  size.width * 0.15 ,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://static.ybox.vn/2021/10/3/1634082002072-Thi%E1%BA%BFt%20k%E1%BA%BF%20kh%C3%B4ng%20t%C3%AAn%20(27).png',
                    ),
                    fit: BoxFit.fitHeight,
                  )
                ),
              ),
              Spacer(),
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
                radius: 25,
              ),
            ],
          )),
    );
  }
}
