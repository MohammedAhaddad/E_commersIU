import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefultBigButton extends StatelessWidget {
  DefultBigButton({
    Key? key,
    required this.text,
    required this.ontab,
    this.fontSize,
    this.fontcolor,
    this.fontWeight,
    this.height = 50,
    this.width = 1.3,
    this.backGroundColor,
    this.radis = 15,
  }) : super(key: key);
  final String text;
  final Function() ontab;
  double? fontSize = 14;
  Color? fontcolor = Colors.white;
  FontWeight? fontWeight;
  Color? backGroundColor = Colors.green;
  num? height;
  num? width;
  double radis;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontab,
      child: Container(
        alignment: Alignment.center,
        // ignore: sort_child_properties_last
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize, color: fontcolor, fontWeight: fontWeight),
        ),
        height: Get.height * height! / Get.height,
        width: Get.width / width!,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radis), color: backGroundColor),
      ),
    );
  }
}
