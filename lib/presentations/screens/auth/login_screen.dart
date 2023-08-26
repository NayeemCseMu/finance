import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/routes/routes.dart';
import '../../utils/app_constants.dart';
import '../../utils/app_text.dart';
import '../../utils/assets_path.dart';
import '../../utils/utils.dart';
import '../../widgets/auth_widget_card.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/visual_title_info.dart';
import 'components/finger_popup.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Log In",

      ),
      body: SizedBox(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Utils.verticalSpace(48),
                VisualTitleInfo(
                  icon: KAssetsPath.registrationSvg,
                  title: kLoginText,
                  subTitle: "",
                ),
                Utils.verticalSpace(30),
                AuthWidgetCard(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                      Utils.verticalSpace(10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      Utils.verticalSpace(16),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: CustomButton(
                              textColor: Colors.white,
                              buttonColor: kPrimaryColor,
                              isElevated: true,
                              press: () {
                                Navigator.pushNamed(
                                    context, RouteNames.home);
                              },
                              text: kContinueText,
                            ),
                          ),
                          Utils.horizontalSpace(16),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (context) {
                                    return FingerPopUp();
                                  });
                            },
                            child: SvgPicture.asset(
                              KAssetsPath.fingerprintIconSvg,
                              height: 48.h,
                              width: 48.w,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
