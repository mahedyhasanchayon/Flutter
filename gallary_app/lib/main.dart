import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/my_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text('Gallary'),
          ),
          body: GridView.count(
            crossAxisCount: 3,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 1000.0,
                width: 1000.0,
                child: Text(
                  'data',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              // ignore: prefer_const_constructors
              MyCard(
                  img: Image.asset(
                "assets/images/mypic1.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic2.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic3.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic4.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic5.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic1.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic1.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic1.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic1.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic1.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic1.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic1.jpg",
                height: 100.0,
                width: double.infinity,
              )),
              MyCard(
                  img: Image.asset(
                "assets/images/mypic1.jpg",
                height: 100.0,
                width: double.infinity,
              )),
            ],
          )),
    );
  }
}
