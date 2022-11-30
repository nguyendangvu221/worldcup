import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class Flags extends StatelessWidget {
  const Flags({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 100,
      height: 100,
      // color: Colors.green,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://1.bigdata-vn.com/wp-content/uploads/2021/10/1634887622_78_TOP-1001-hinh-anh-dep-tren-mang-xa-hoi-Hot.jpg"))),
      // child: Image(
      //   image: NetworkImage(
      //       "https://1.bigdata-vn.com/wp-content/uploads/2021/10/1634887622_78_TOP-1001-hinh-anh-dep-tren-mang-xa-hoi-Hot.jpg"),
      // )),
    ));
  }
}
