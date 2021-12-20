import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/MyCard.dart';

void main() {
  runApp(Gallary());
}

class Gallary extends StatelessWidget {
  const Gallary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Gallary'),
          ),
          body: GridView.count(
            crossAxisCount: 3,
            children: [
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
            ],
          )),
    );
  }
}
