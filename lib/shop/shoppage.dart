import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:instaapp/Instahome.dart';
import 'package:instaapp/main.dart';

import 'GridShopPage.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: Instahomes().topBar,
        body: ListView(scrollDirection: Axis.vertical,physics: AlwaysScrollableScrollPhysics(),
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 7),
                    child: Icon(Icons.search),
                  ),
                  Text('Search shops')
                ],
              ),
              height: 50,
              width: ((MediaQuery.of(context).size.width) * 0.10),
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(11)),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle),
                    height: 35,
                    width: 55,
                    child: Text(
                      'Shops',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle),
                    height: 35,
                    width: 70,
                    child: Text(
                      'Videos',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.rectangle),
                    height: 35,
                    width: 110,
                    child: Text(
                      'Editors picks',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            GridShopPage(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.white,
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Instahomes(),
                        ),
                      );
                    },
                    icon: Icon(Icons.home)),
                Icon(Icons.search),
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    child: Icon(Icons.add)),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShopPage()));
                  },
                  icon: Icon(Icons.shopping_bag_outlined),
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/g.jpg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
