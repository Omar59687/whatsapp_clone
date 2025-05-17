import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/utils/coloors.dart';
import 'package:whatsapp_clone/widgets/custom_elevated_button.dart';
import 'package:whatsapp_clone/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController phoneNumberController;
  late TextEditingController countryCodeController;

  void initState() {
    countryNameController = TextEditingController(text: 'Ethiopia');
    phoneNumberController = TextEditingController();
    countryCodeController = TextEditingController(text: '251');
    super.initState();
  }

  void dispose() {
    countryNameController.dispose();
    phoneNumberController.dispose();
    countryCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enter your phone number',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: context.theme.authAppBarTextColor,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: context.theme.greyColor),
            onPressed: () {
              // Handle more options
            },
            splashColor: Colors.transparent,
            splashRadius: 22,
            iconSize: 22,
            constraints: const BoxConstraints(minWidth: 40),
            padding: EdgeInsets.zero,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "WhatsApp will need to verify your phone number. ",
                style: TextStyle(
                  color: context.theme.greyColor,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: "What's my number?",
                    style: TextStyle(
                      color: context.theme.blueColor,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: CustomTextField(
              onTap: () {},
              readOnly: true,
              controller: countryNameController,
              suffixIcon:
                  const Icon(Icons.arrow_drop_down, color: Coloors.greenDark),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                  child: CustomTextField(
                    onTap: () {},
                    controller: countryCodeController,
                    prefixText: '+',
                    readOnly: true,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(
                    controller: phoneNumberController,
                    hintText: 'phone number',
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Carrier charges may apply.',
            style: TextStyle(
              color: context.theme.greyColor,
              height: 1.5,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: 'NEXT',
        buttonWidth: 90,
      ),
    );
  }
}
