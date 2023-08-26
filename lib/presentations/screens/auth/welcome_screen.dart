import '../../config/routes/routes.dart';
import '../../utils/app_constants.dart';
import '../../utils/app_text.dart';
import '../../utils/assets_path.dart';
import '../../widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/utils.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SizedBox(
        // height: ResponsiveSize.screenHeight,
        width: size.width,
        child: Column(
          children: [
            Spacer(),
            Expanded(
              flex: 2,
              child: SvgPicture.asset(KAssetsPath.mollet),
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
                        fontSize: 28.sp,
                        color: Colors.white),
                  ),
                  Utils.verticalSpace(24),
                  SizedBox(
                    width: 285.w,
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
                    press: () {
                      Navigator.pushNamed(
                          context, RouteNames.authenticationScreen);
                    },
                  ),
                  Utils.verticalSpace(10),
                  CustomButton(
                    text: kRegisterText.toUpperCase(),
                    textColor: Colors.white,
                    buttonColor: Colors.transparent,
                    isElevated: false,
                    press: () => Navigator.pushNamed(
                        context, RouteNames.registration),
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
