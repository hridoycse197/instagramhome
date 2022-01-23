// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:instaapp/InstaList.dart';
import 'package:instaapp/shop/shoppage.dart';

import 'InstaBody.dart';

class Instahomes extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Colors.white,
    elevation: 0,leadingWidth:0,
    title: Container(
        height: 40,
        width: 150,
        child: Text(
          'Instagram',
          style: TextStyle(
              letterSpacing: 2,
              fontFamily: 'bilbao',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        )),
    actions: const [
      SizedBox(
          height: 35,
          width: 25,
          child: Image(image: AssetImage('assets/love.png'))),
      Padding(
        padding: EdgeInsets.all(12.0),
        child: SizedBox(
            height: 35,
            width: 25,
            child: Image(
                image: AssetImage(
              'assets/facebook-messenger-13158.png',
            ))),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaList(),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
              Icon(Icons.home),
              Icon(Icons.search),
              Container(decoration: BoxDecoration(
                shape: BoxShape.rectangle,border: Border.all(color: Colors.black),borderRadius:BorderRadius.all(Radius.circular(7))
              ),
                child: Icon(Icons.add)),
              IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ShopPage()));}, icon:Icon( Icons.shopping_bag_outlined),),
            
              CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage('assets/g.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
