// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Newspage extends StatelessWidget {
  const Newspage({
    Key? key,
    required this.newsList,
    required this.index,
  }) : super(key: key);
  final List? newsList;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.black,
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "${newsList![index]["attributes"]["title"]}",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            background: Image.network(
              "http://localhost:1337${newsList![index]["attributes"]["image"]["data"]["attributes"]["url"]}",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: 345,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "${newsList![index]["attributes"]["details"]}",
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
