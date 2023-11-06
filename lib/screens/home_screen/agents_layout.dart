import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waffa/components/agent_card.dart';

class AgentsLauouy extends StatelessWidget {
  const AgentsLauouy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.01, horizontal: Get.width * 0.05),
      child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) => AgentCard(),
          separatorBuilder: (context, index) =>
              Divider(height: Get.height * 0.03),
        ),
      ),
    );
  }
}
