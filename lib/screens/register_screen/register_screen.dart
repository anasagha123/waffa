import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waffa/components/button_builder.dart';
import 'package:waffa/controllers/register_screen_controller.dart';
import 'package:waffa/screens/register_screen/agent_layout.dart';
import 'package:waffa/screens/register_screen/user_layout.dart';

class RegisterScreen extends StatelessWidget {
  final screenController = Get.put(RegisterScreenController());

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: Get.height / 15, horizontal: Get.width / 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: GetBuilder<RegisterScreenController>(
            builder: (controller) => Column(
              children: [
                Row(
                  children: [
                    Switch(
                        value: controller.isAgent,
                        onChanged: controller.handleChangeIsAgent),
                    Text(
                      "انشاء الحساب كوكيل",
                      style: Get.textTheme.bodySmall,
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height / 30,
                ),
                Form(
                  key: controller.formKey,
                  child: Visibility(
                    visible: controller.isAgent,
                    replacement: const UserLayout(),
                    child: const AgentLayout(),
                  ),
                ),
                SizedBox(
                  height: Get.height / 30,
                ),
                Visibility(
                  visible: controller.state != RegisterScreenState.loadingState,
                  replacement: const CircularProgressIndicator(),
                  child: ButtonBuilder(
                    width: Get.width / 2,
                    height: Get.height / 15,
                    label: "انشاء الحساب",
                    function: controller.register,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
