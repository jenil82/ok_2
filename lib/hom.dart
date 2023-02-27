import 'package:flutter/material.dart';

import 'moda.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List imgList = [
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg","assets/images/4.jpeg)
  ];
  List nameList = ["deep", "utsav", "romit", "om"];
  List contact = ["1265836845"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return UI(imgList[index], nameList[index], contact[index]);
          },
        ),
      ),
    );
  }

  Widget UI(String img, String na, String pr) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "${img}",
              height: 50,
              width: 50,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${na}"),
                    Text("\$ ${pr}"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
