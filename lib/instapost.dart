import 'package:flutter/material.dart';

class instapost extends StatelessWidget {
  static var picture = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/6.jpg',
    'assets/7.jpg',
    'assets/8.jpg',
    'assets/9.JPG',
    'assets/10.JPG'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: picture.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                image:
                    DecorationImage(fit: BoxFit.fill, image: AssetImage('${picture[index]}'))),
          );
        });
  }
}
