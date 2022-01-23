// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instaapp/InstaStory.dart';

class InstaList extends StatelessWidget {
  static var name = [
    'hridoy',
    'rumon',
    'sadek',
    'kabir',
    'rony',
    'saidy',
    'rafi',
    'sumu',
    'akash',
    'unknown_buddy',
  ];

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
    // TODO: implement build
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: name.length,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              height: 100,
              child: InstaStory(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(4, 10, 8, 8),
                    child: Container(
                      height: 60,
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('${picture[index]}',),
                          ),
                          title: Text(
                            '${name[index]}',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          trailing: SizedBox(
                            height: 60,
                            width: 20,
                            child: Image(
                              image: AssetImage('assets/do.png'),
                            ),
                          )),
                    )),
                Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('${picture[index]}')))),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 70,
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 50,
                                  width: 40,
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 33,
                                  )),
                              SizedBox(
                                  height: 50,
                                  width: 40,
                                  child: ImageIcon(
                                      AssetImage('assets/message-.png'))),
                              SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: ImageIcon(
                                      AssetImage('assets/messagesend-.png'))),
                              Padding(
                                padding: const EdgeInsets.only(left: 190.0),
                                child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Icon(
                                    Icons.bookmark_border,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text("4 views")),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 5),
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage('assets/g.jpg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Add a Coment",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 170.0),
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundImage:
                                        AssetImage('assets/23000.jpg'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border:
                                              Border.all(color: Colors.black),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 2),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '2 hours ago',
                              style: TextStyle(fontSize: 10),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
