import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'components/myPageDesign.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<List> getNews() async {
    http.Response response = await http
        .get(Uri.parse("http://localhost:1337/api/blogs?populate=image"));
    List data = jsonDecode(response.body)["data"];
    print(data[0]["attributes"]["image"]["data"]["attributes"]["url"]);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        // appBar: AppBar(
        //   title: Text('Material App Bar'),
        // ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: FutureBuilder(
            future: getNews(),
            builder: (BuildContext context, AsyncSnapshot<List> sn) {
              if (sn.hasData) {
                var newsList = sn.data;
                return MyPageDesign(newsList: newsList);
              } else if (sn.hasError) {
                return Text("Error Success");
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
