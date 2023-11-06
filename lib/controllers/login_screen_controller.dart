import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waffa/screens/home_screen/home_screen.dart';
import 'package:waffa/screens/register_screen/register_screen.dart';

enum LoginScreenState {
  initialState,
  loadingState,
  loadingSuccess,
  loadingFail
}

class LoginScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();
  bool isAgent = false;
  LoginScreenState state = LoginScreenState.initialState;
  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();

  String? userNameValidation(String? val) {
    if (val!.isEmpty) return "يجب ملئ اسم المستخدم";
    return null;
  }

  String? passwordValidation(String? val) {
    if (val!.isEmpty) return "يجب ملئ كلمة المرور";
    return null;
  }

  login() async {
    state = LoginScreenState.loadingState;
    update();

    // TODO: ADD LOGIN LOGIC

    Get.offAll(() => HomeScreen());
    state = LoginScreenState.initialState;
    update();
  }

  handleIsAgent(bool val) {
    isAgent = val;
    update();
  }

  goToRegisterScreen() {
    Get.to(() => RegisterScreen());
  }
}
