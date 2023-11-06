import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum RegisterScreenState {
  initialState,
  loadingState,
  loadingSuccess,
  loadingFail
}

class RegisterScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();
  bool isAgent = false;
  RegisterScreenState state = RegisterScreenState.initialState;

  void handleChangeIsAgent(bool val) {
    isAgent = val;
    update();
  }

  void register() async {
    state = RegisterScreenState.loadingState;
    update();

    Get.back();
  }
}
