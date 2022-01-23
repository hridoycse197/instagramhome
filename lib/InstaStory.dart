
import 'package:flutter/material.dart';

class InstaStory extends StatelessWidget {
  static var name = ['hridoy', 'rumon', 'sadek', 'kabir', 'rony', 'saidy','rafi','sumu','akash','unknown_buddy',];
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

  final stories = Expanded(
      child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: name.length,
        itemBuilder: (context, index) => Stack(
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.yellow, Colors.orange, Colors.red]),
                        border: Border.all(
                          color: Colors
                              .amber, //kHintColor, so this should be changed?
                        ),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('${picture[index]}'),
                        ),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 7),
                    ),
                    Text('${name[index]}'),
                  ],
                ),
                index == 0
                    ? Positioned(
                        right: 10,
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Colors.blueAccent,
                          child: const Icon(
                            Icons.add,
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            ),
  ),
  
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [stories],
    );
  }
}
