import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waffa/components/button_builder.dart';
import 'package:waffa/components/text_form_field_builder.dart';
import 'package:waffa/controllers/login_screen_controller.dart';

class LoginScreen extends StatelessWidget {
  final screenController = Get.put(LoginScreenController());

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            vertical: Get.height / 15, horizontal: Get.width / 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/waffa_logo.png",
              fit: BoxFit.cover,
              height: Get.height / 5,
              width: Get.width / 1.3,
            ),
            Text(
              "تسجيل الدخول",
              style: Get.theme.textTheme.bodyLarge,
            ),
            SizedBox(
              width: Get.width / 1.2,
              child: Form(
                  key: screenController.formKey,
                  child: Column(
                    children: [
                      TextFormFieldBuilder(
                        icon: Icons.person,
                        label: "اسم المستخدم",
                        textEditingController: screenController.userName,
                        validator: screenController.userNameValidation,
                        isPassword: false,
                        textInputType: TextInputType.name,
                      ),
                      SizedBox(
                        height: Get.height / 20,
                      ),
                      TextFormFieldBuilder(
                        icon: Icons.password,
                        label: "كلمة المرور",
                        textEditingController: screenController.password,
                        validator: screenController.passwordValidation,
                        isPassword: true,
                        textInputType: TextInputType.visiblePassword,
                      ),
                    ],
                  )),
            ),
            Row(
              children: [
                GetBuilder<LoginScreenController>(
                  builder: (controller) => Checkbox(
                    value: controller.isAgent,
                    onChanged: (val) => controller.handleIsAgent(val!),
                    activeColor: Colors.blue,
                  ),
                ),
                Text(
                  "تسجيل الدخول كوكيل",
                  style: Get.theme.textTheme.bodySmall,
                ),
              ],
            ),
            SizedBox(height: Get.height / 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "لا تملك حساب؟؟",
                  style: Get.theme.textTheme.bodySmall,
                ),
                TextButton(
                  onPressed: screenController.goToRegisterScreen,
                  child: const Text("سجل هنا"),
                )
              ],
            ),
            SizedBox(
              height: Get.height / 20,
            ),
            Center(
              child: GetBuilder<LoginScreenController>(
                builder: (controller) => Visibility(
                  visible: controller.state != LoginScreenState.loadingState,
                  replacement: const CircularProgressIndicator(),
                  child: ButtonBuilder(
                    width: Get.width / 1.5,
                    height: Get.height / 15,
                    backGroundColor: Colors.blue,
                    label: "تسجيل الدخول",
                    function: screenController.login,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
