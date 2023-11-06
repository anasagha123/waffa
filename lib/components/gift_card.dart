import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftCard extends StatelessWidget {
  const GiftCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.01, horizontal: Get.width * 0.05),
      decoration: BoxDecoration(
        color: Color.fromRGBO(120, 120, 200, 0.3),
        boxShadow: [
          BoxShadow(
              color: const Color.fromRGBO(120, 120, 200, 0.7),
              blurRadius: 3,
              spreadRadius: 5),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.asset("assets/images/waffa_logo.png"),
          Divider(color: Color.fromRGBO(60, 60, 60, 1)),
          Text(
            "اسم المنتج",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          Text("10"),
        ],
      ),
    );
  }
}
