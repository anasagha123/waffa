import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waffa/screens/login_screen.dart';

enum HomeScreenState {
  initialState,
  loadingState,
  loadinguccessState,
  loadingFailState
}

class HomeScreenController extends GetxController {
  PageController pageController = PageController();
  int currentIndex = 0;

  double titleHeight = 0;
  double titleWidth = 0;

  getItems() {}

  refreshData() {}

  changeCurrentIndex(val) {
    currentIndex = val;
    pageController.animateToPage(
      val,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOutQuart,
    );
    update();
  }

  handleChangePage(val) {
    currentIndex = val;
    if (currentIndex == 2) {
      titleHeight = Get.height * 0.05;
      titleWidth = Get.width * 0.4;
    } else {
      titleHeight = 0;
      titleWidth = 0;
    }
    update();
  }

  logout() {
    //TODO: DESCRIBE LOGOUT LOGIC

    Get.to(() => LoginScreen());
  }
}
