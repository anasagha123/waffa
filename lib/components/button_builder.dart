import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonBuilder extends StatelessWidget {
  final double width;
  final double height;
  final String label;
  final TextStyle? textStyle;
  final Color backGroundColor;
  final Color labelColor;
  final Function() function;

  const ButtonBuilder(
      {super.key,
      this.backGroundColor = Colors.blue,
      this.labelColor = Colors.white,
      this.textStyle,
      required this.width,
      required this.height,
      required this.label,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 200),
                blurRadius: 20,
                offset: Offset(-Get.width / 30, Get.height / 40)),
          ],
        ),
        width: width,
        height: height,
        child: Center(
          child: Text(
            label,
            style: textStyle ??
                Get.theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
