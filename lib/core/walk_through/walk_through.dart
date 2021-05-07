import 'package:finance/config/sizes.dart';
import 'package:finance/constants/app_constants.dart';
import 'package:finance/core/auth/welcome_screen.dart';
import 'package:finance/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/body.dart';

class WalkThroughScreen extends StatelessWidget {
  static final String routeName = "/walk_through";
  @override
  Widget build(BuildContext context) {
    ResponsiveSize.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          CustomButton(
            text: "Skip",
            textColor: kLightTextColor,
            buttonColor: Colors.transparent,
            isElevated: false,
            press: () => Get.offAllNamed(WelcomScreen.routeName),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
