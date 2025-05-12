import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/utils/coloors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Read our",
          style: TextStyle(
            color: context.theme.greyColor,
            height: 1.5,
          ),
          children: [
            TextSpan(
                text: " Privacy Policy.",
                style: TextStyle(
                  color: context.theme.blueColor,
                  height: 1.5,
                )),
            const TextSpan(
                text: " Tap 'Agree and continue' to accept the ",
                style: TextStyle(color: Coloors.greyDark)),
            TextSpan(
                text: "Terms of Service.",
                style: TextStyle(color: context.theme.blueColor)),
          ],
        ),
      ),
    );
  }
}
