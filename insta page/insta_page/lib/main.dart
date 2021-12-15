import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static String dualCharEmoji = "📸";
  String text = dualCharEmoji;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "_tukamimikare_",
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Container(
                        height: 77.0,
                        width: 77.0,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/profil.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "data",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "data",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "data",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "data",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "data",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "data",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Mahedy Hasan\n',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'sageo',
                                fontWeight: FontWeight.w800)),
                        TextSpan(
                            text:
                                'LA CA 🌴Most of these photos are developed and scanned at home by hand. 📸',
                            style:
                                TextStyle(fontSize: 16.0, fontFamily: 'sageo')),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontFamily: 'sages', fontWeight: FontWeight.w800),
                  ),
                ),
                TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.directions_car),
                      child: Text("tab1"),
                    ),
                    Tab(
                      icon: Icon(Icons.directions_car),
                      child: Text("tab2"),
                    ),
                    TabBarView(children: [Text("data1"), Text("data2")])
                  ],
                )
              ],
            )),
      ),
    );
  }
}
