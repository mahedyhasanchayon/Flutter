import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/mypic1.jpg',
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              width: double.infinity,
              color: Colors.orangeAccent,
              child: Column(
                children: [
                  Text(
                    'Mahedy Hasan',
                    style: TextStyle(fontSize: 10.0),
                  ),
                  Text(
                    'ID:193-15-3004',
                    style: TextStyle(fontSize: 8.0),
                  ),
                  Text(
                    'Section: PC-A',
                    style: TextStyle(fontSize: 8.0),
                  ),
                  Text(
                    'Department Of CSE',
                    style: TextStyle(fontSize: 8.0),
                  ),
                  Text(
                    'Daffodil International University',
                    style: TextStyle(fontSize: 8.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
