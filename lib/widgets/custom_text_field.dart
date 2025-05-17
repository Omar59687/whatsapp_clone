import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/utils/coloors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.hintText,
      this.controller,
      this.keyboardType,
      this.readOnly,
      this.textAlign,
      this.prefixText,
      this.suffixIcon,
      this.onChanged,
      this.onTap});

  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final TextAlign? textAlign;
  final String? prefixText;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: readOnly == null ? keyboardType : null,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        prefixText: prefixText,
        suffix: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: context.theme.greyColor),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Coloors.greenDark),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Coloors.greenDark, width: 2),
        ),
      ),
    );
  }
}
