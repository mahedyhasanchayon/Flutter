// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:news_app/pages/newspage.dart';

class MyPageDesign extends StatelessWidget {
  const MyPageDesign({
    Key? key,
    required this.newsList,
  }) : super(key: key);

  final List? newsList;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          pinned: true,
          expandedHeight: 290.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
              child: Container(
                height: 32,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: newsList!.length,
                    itemBuilder: (BuildContext context, int i) => Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black12)),
                            height: 32,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                child: Text(
                                  "আন্তর্জাতিক",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        )),
              ),
            ),
            background: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Text(
                          "Letest News",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          "See All",
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.arrow_right_alt_sharp)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 248,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: newsList!.length,
                      itemBuilder: (BuildContext context, int i) =>
                          GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Newspage(
                                        newsList: newsList, index: i))),
                            child: Container(
                              height: 240,
                              width: 345,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 240.0,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                      "http://localhost:1337${newsList![i]["attributes"]["image"]["data"]["attributes"]["url"]}"))),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 120.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: LinearGradient(
                                              colors: [
                                                Colors.black.withOpacity(0.8),
                                                Colors.black.withOpacity(0.0)
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 18.0, left: 18.0),
                                          child: Text(
                                            "${newsList![i]["attributes"]["title"]}",
                                            style: TextStyle(
                                                fontSize: 22.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 80.0, left: 18.0),
                                          child: Text(
                                            "${(newsList![i]["attributes"]["details"]).substring(0, 120)}...",
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 1000,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: newsList!.length,
                itemBuilder: (BuildContext context, int i) => Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 140.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "http://localhost:1337${newsList![i]["attributes"]["image"]["data"]["attributes"]["url"]}"))),
                              ),
                              Container(
                                width: double.infinity,
                                height: 120.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.black.withOpacity(0.8),
                                      Colors.black.withOpacity(0.0)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 18.0, left: 18.0),
                                child: Text(
                                  "${newsList![i]["attributes"]["title"]}",
                                  style: TextStyle(
                                      fontSize: 22.0, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 80.0, left: 18.0),
                                child: Text(
                                  "${(newsList![i]["attributes"]["details"]).substring(0, 120)}...",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
// Container(
//       child: ListView(
//         children: [
//           //letestNews Bar
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               width: double.infinity,
//               child: Row(
//                 children: [
//                   Text(
//                     "Letest News",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     width: 150,
//                   ),
//                   Text(
//                     "See All",
//                     style: TextStyle(color: Colors.lightBlue),
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   Icon(Icons.arrow_right_alt_sharp)
//                 ],
//               ),
//             ),
//           ),
//           //Top Banner News
//           Container(
//             height: 248,
//             width: double.infinity,
//             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: newsList!.length,
//                 itemBuilder: (BuildContext context, int i) => GestureDetector(
//                       onTap: () => Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) =>
//                               Newspage(newsList: newsList, index: i))),
//                       child: Container(
//                         height: 240,
//                         width: 345,
//                         child: Card(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           child: Column(
//                             children: [
//                               Stack(
//                                 children: [
//                                   Container(
//                                     height: 240.0,
//                                     width: double.infinity,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(20),
//                                         image: DecorationImage(
//                                             fit: BoxFit.cover,
//                                             image: NetworkImage(
//                                                 "http://localhost:1337${newsList![i]["attributes"]["image"]["data"]["attributes"]["url"]}"))),
//                                   ),
//                                   Container(
//                                     width: double.infinity,
//                                     height: 120.0,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       gradient: LinearGradient(
//                                         colors: [
//                                           Colors.black.withOpacity(0.8),
//                                           Colors.black.withOpacity(0.0)
//                                         ],
//                                         begin: Alignment.topCenter,
//                                         end: Alignment.bottomCenter,
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 18.0, left: 18.0),
//                                     child: Text(
//                                       "${newsList![i]["attributes"]["title"]}",
//                                       style: TextStyle(
//                                           fontSize: 22.0, color: Colors.white),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 80.0, left: 18.0),
//                                     child: Text(
//                                       "${(newsList![i]["attributes"]["details"]).substring(0, 120)}...",
//                                       style: TextStyle(
//                                           fontSize: 12.0, color: Colors.white),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     )),
//           ),
//           //catagories
//           Padding(
//             padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
//             child: Container(
//               height: 32,
//               width: double.infinity,
//               child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: newsList!.length,
//                   itemBuilder: (BuildContext context, int i) => Padding(
//                         padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               border: Border.all(color: Colors.black12)),
//                           height: 32,
//                           child: Padding(
//                             padding: const EdgeInsets.all(5.0),
//                             child: Center(
//                               child: Text(
//                                 "আন্তর্জাতিক",
//                                 style: TextStyle(fontSize: 12),
//                               ),
//                             ),
//                           ),
//                         ),
//                       )),
//             ),
//           ),

//           Container(
//             height: 1000,
//             width: double.infinity,
//             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//             child: ListView.builder(
//                 scrollDirection: Axis.vertical,
//                 itemCount: newsList!.length,
//                 itemBuilder: (BuildContext context, int i) => Container(
//                       height: 180,
//                       width: 345,
//                       child: Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Column(
//                           children: [
//                             Stack(
//                               children: [
//                                 Container(
//                                   height: 180.0,
//                                   width: double.infinity,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10),
//                                       image: DecorationImage(
//                                           fit: BoxFit.cover,
//                                           image: NetworkImage(
//                                               "http://localhost:1337${newsList![i]["attributes"]["image"]["data"]["attributes"]["url"]}"))),
//                                 ),
//                                 Container(
//                                   width: double.infinity,
//                                   height: 120.0,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     gradient: LinearGradient(
//                                       colors: [
//                                         Colors.black.withOpacity(0.8),
//                                         Colors.black.withOpacity(0.0)
//                                       ],
//                                       begin: Alignment.topCenter,
//                                       end: Alignment.bottomCenter,
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       top: 18.0, left: 18.0),
//                                   child: Text(
//                                     "${newsList![i]["attributes"]["title"]}",
//                                     style: TextStyle(
//                                         fontSize: 22.0, color: Colors.white),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       top: 80.0, left: 18.0),
//                                   child: Text(
//                                     "${(newsList![i]["attributes"]["details"]).substring(0, 120)}...",
//                                     style: TextStyle(
//                                         fontSize: 12.0, color: Colors.white),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     )),
//           ),
        
        
//         //finished
//         ],
//       ),
//     );