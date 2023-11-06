import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waffa/components/text_form_field_builder.dart';

class AgentLayout extends StatelessWidget {
  const AgentLayout({super.key});

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
          icon: Icons.location_on,
          label: "العنوان",
          textInputType: TextInputType.streetAddress,
        ),
        SizedBox(
          height: Get.height / 30,
        ),
        TextFormFieldBuilder(
          icon: Icons.password,
          label: "كلمة المرور",
          isPassword: true,
          textInputType: TextInputType.visiblePassword,
        ),
        SizedBox(
          height: Get.height / 30,
        ),
        TextFormFieldBuilder(
          icon: Icons.password,
          label: "تأكيد كلمة المرور",
          isPassword: true,
          textInputType: TextInputType.visiblePassword,
        ),
      ],
    );
  }
}
