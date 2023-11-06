import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BillCard extends StatelessWidget {
  const BillCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      height: Get.height * 0.2,
      color: Colors.red,
    );
  }
}
