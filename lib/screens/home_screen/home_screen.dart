import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waffa/controllers/home_screen_controller.dart';
import 'package:waffa/screens/home_screen/agents_layout.dart';
import 'package:waffa/screens/home_screen/bills_layout.dart';
import 'package:waffa/screens/home_screen/gift_layout.dart';
import 'package:waffa/screens/home_screen/shoping_layout.dart';

class HomeScreen extends StatelessWidget {
  final screenController = Get.put(HomeScreenController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: GetBuilder<HomeScreenController>(
          builder: (controller) => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: controller.titleHeight,
            width: controller.titleWidth,
            child: Container(
              color: Colors.amber,
              child: Center(child: Text("عدد النقاط 123")),
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.exit_to_app),
          onPressed: screenController.logout,
        ),
        actions: [
          IconButton(
            onPressed: screenController.refreshData,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: PageView(
        controller: screenController.pageController,
        onPageChanged: screenController.handleChangePage,
        physics: const BouncingScrollPhysics(),
        children: const [
          ShoppingLayout(),
          GiftLayout(),
          BillsLayout(),
          AgentsLauouy(),
        ],
      ),
      bottomNavigationBar: GetBuilder<HomeScreenController>(
        builder: (controller) => BottomNavigationBar(
          currentIndex: controller.currentIndex,
          onTap: controller.changeCurrentIndex,
          selectedItemColor: Get.theme.colorScheme.primary,
          unselectedItemColor: Get.theme.unselectedWidgetColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_rounded), label: "المنتجات"),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard_rounded), label: "الهدايا"),
            BottomNavigationBarItem(icon: Icon(Icons.money), label: "الفواتير"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "الوكلاء"),
          ],
        ),
      ),
    );
  }
}
