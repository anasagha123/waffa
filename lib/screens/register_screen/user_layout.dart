import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waffa/components/text_form_field_builder.dart';

class UserLayout extends StatelessWidget {
  const UserLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldBuilder(
          icon: Icons.person,
          label: "اسم المستخدم",
          textInputType: TextInputType.name,
        ),
        SizedBox(
          height: Get.height / 30,
        ),
        TextFormFieldBuilder(
          icon: Icons.phone,
          label: "رقم الهاتف",
          textInputType: TextInputType.number,
        ),
        SizedBox(
          height: Get.height / 30,
        ),
        TextFormFieldBuilder(
          icon: Icons.password,
          label: "كلمة المرور",
          textInputType: TextInputType.visiblePassword,
          isPassword: true,
        ),
        SizedBox(
          height: Get.height / 30,
        ),
        TextFormFieldBuilder(
          icon: Icons.password,
          label: "تأكيد كلمة المرور",
          textInputType: TextInputType.visiblePassword,
          isPassword: true,
        ),
      ],
    );
  }
}
