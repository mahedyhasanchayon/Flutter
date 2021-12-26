import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Image img;
  const MyCard({
    required Image this.img,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            img,
            Container(
              width: double.infinity,
              color: Colors.orangeAccent,
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Mahedy Hasan',
                    style: TextStyle(fontSize: 10.0),
                  ),
                  const Text(
                    'ID:193-15-3004',
                    style: TextStyle(fontSize: 8.0),
                  ),
                  const Text(
                    'Section: PC-A',
                    style: TextStyle(fontSize: 8.0),
                  ),
                  const Text(
                    'Department Of CSE',
                    style: TextStyle(fontSize: 8.0),
                  ),
                  const Text(
                    'Daffodil International University',
                    style: TextStyle(fontSize: 8.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
