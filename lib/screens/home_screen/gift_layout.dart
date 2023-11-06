import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waffa/components/gift_card.dart';

class GiftLayout extends StatelessWidget {
  const GiftLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.03, horizontal: Get.width * 0.05),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      crossAxisSpacing: Get.width * 0.05,
      mainAxisSpacing: Get.height * 0.03,
      children: [for (int i = 0; i < 10; i++) GiftCard()],
    );
  }
}
