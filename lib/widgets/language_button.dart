import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/utils/coloors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langBtnHightlightColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language,
                color: Coloors.greenDark,
              ),
              const SizedBox(width: 10),
              const Text(
                'English',
                style: TextStyle(
                  color: Coloors.greenDark,
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.keyboard_arrow_down,
                color: Coloors.greenDark,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
