import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/utils/coloors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Optional: use this for full-height as well
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 300, // Takes full width
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    splashColor: Colors.transparent,
                    splashRadius: 22,
                    iconSize: 22,
                    icon: const Icon(
                      Icons.close,
                      color: Coloors.greyDark,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'App Language',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Theme.of(context).dividerColor.withOpacity(0.4),
                  thickness: 1,
                ),
              ),

              RadioListTile(
                  value: true,
                  groupValue: true,
                  onChanged: (value) {},
                  activeColor: Coloors.greenDark,
                  title: const Text('English'),
                  subtitle: Text(
                    "(phone's language)",
                    style: TextStyle(
                      color: context.theme.greyColor,
                    ),
                  )),

              RadioListTile(
                  value: true,
                  groupValue: false,
                  onChanged: (value) {},
                  activeColor: Coloors.greenDark,
                  title: const Text('Arabic'),
                  subtitle: Text(
                    "رقم الهاتف",
                    style: TextStyle(
                      color: context.theme.greyColor,
                    ),
                  )),
              // Add more widgets here
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => {showBottomSheet(context)},
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
