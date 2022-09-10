// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  List icons = [];
  List names = [];
  List<Map> apps = [
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.browse_gallery_sharp, "name": "Gallary"},
    {"icon": Icons.calculate, "name": "Calculator"},
    {"icon": Icons.calendar_month, "name": "Calander"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.browse_gallery_sharp, "name": "Gallary"},
    {"icon": Icons.calculate, "name": "Calculator"},
    {"icon": Icons.calendar_month, "name": "Calander"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.browse_gallery_sharp, "name": "Gallary"},
    {"icon": Icons.calculate, "name": "Calculator"},
    {"icon": Icons.calendar_month, "name": "Calander"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
    {"icon": Icons.camera_alt, "name": "Camera"},
  ];

  // final List<Widget> gridItems = List.generate(10, (index) {
  //   return Container(
  //     height: 100,
  //     width: 100,
  //     color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
  //         Random().nextInt(255), 1),
  //   );
  // });

  // Widget buildGVWithBuilder() {
  //   return GridView.builder(
  //     itemCount: 100,
  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 3,
  //       mainAxisSpacing: 5,
  //       crossAxisSpacing: 5,
  //     ),
  //     itemBuilder: (context, index) {
  //       return Container(
  //         height: 100,
  //         width: 100,
  //         color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
  //             Random().nextInt(255), 1),
  //       );
  //     },
  //   );
  // }

  Widget buildLuncher() {
    return GridView.builder(
      itemCount: apps.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) {
        print(index);
        final app = apps[index];
        return Container(
          // color: Colors.green,
          child: Column(
            children: [
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Icon(app['icon'])),
              SizedBox(
                height: 5,
              ),
              Text(app['name']),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildLuncher(),
    );
  }
}
