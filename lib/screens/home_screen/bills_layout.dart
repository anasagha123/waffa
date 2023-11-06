import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waffa/components/bill_card.dart';

class BillsLayout extends StatelessWidget {
  const BillsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.01, horizontal: Get.width * 0.05),
      child: Column(
        children: [
          Text("data"),
          Text("data"),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) => BillCard(),
              separatorBuilder: (context, index) => Divider(
                height: Get.height * 0.03,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
