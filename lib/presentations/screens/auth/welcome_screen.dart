import 'package:finance/presentations/config/sizes.dart';
import 'package:finance/presentations/utils/app_constants.dart';
import 'package:finance/presentations/utils/app_text.dart';
import 'package:finance/presentations/utils/assets_path.dart';
import 'package:finance/presentations/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'resgistration/registration.dart';

class WelcomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SizedBox(
        height: ResponsiveSize.screenHeight,
        width: ResponsiveSize.screenWidth,
        child: Column(
          children: [
            Spacer(),
            Expanded(
              flex: 2,
              child: SvgPicture.asset(mollet),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    kWelcomText,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: getTextSize(28),
                        color: Colors.white),
                  ),
                  getVerticalSpace(25),
                  SizedBox(
                    width: getScreeWidth(285),
                    child: Text(
                      kLoremText,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CustomButton(
                    text: kSignInText.toUpperCase(),
                    textColor: kDarkTextColor,
                    buttonColor: Colors.white,
                    isElevated: true,
                    press: () {},
                  ),
                  getVerticalSpace(10),
                  CustomButton(
                    text: kRegisterText.toUpperCase(),
                    textColor: Colors.white,
                    buttonColor: Colors.transparent,
                    isElevated: false,
                    press: () => Get.toNamed(RegistrationScreen.routeName),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
