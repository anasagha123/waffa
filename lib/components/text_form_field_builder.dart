import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TextFormFieldBuilder extends StatelessWidget {
  final bool isPassword;
  final int? maxlines;
  final String? initialValue;
  final int? maxLength;
  final String label;
  final TextStyle? textStyle;
  final IconData? icon;
  final TextInputType? textInputType;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  late RxBool isObscure;

  TextFormFieldBuilder({
    super.key,
    this.isPassword = false,
    this.maxLength,
    this.maxlines = 1,
    this.initialValue,
    required this.label,
    this.textStyle,
    this.icon,
    this.textInputType,
    this.textEditingController,
    this.validator,
    this.onChanged,
  }) {
    isObscure = RxBool(isPassword);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        initialValue: initialValue,
        maxLines: maxlines,
        maxLength: maxLength,
        textAlign: TextAlign.start,
        keyboardType: textInputType,
        obscureText: isObscure.value,
        validator: validator,
        controller: textEditingController,
        onChanged: onChanged,
        decoration: InputDecoration(
          label: Text(
            label,
            style: textStyle ?? Get.theme.textTheme.bodyMedium,
          ),
          prefixIcon: icon == null ? null : Icon(icon),
          suffixIcon: (isPassword)
              ? IconButton(
                  onPressed: () {
                    isObscure.value = !isObscure.value;
                  },
                  icon: Icon((isObscure.value)
                      ? Icons.visibility_outlined
                      : Icons.visibility))
              : const SizedBox(),
        ),
      ),
    );
  }
}
