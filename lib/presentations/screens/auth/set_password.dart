import '../../config/routes/routes.dart';
import '../../widgets/visual_title_info.dart';
import 'package:flutter/material.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_text.dart';
import '../../utils/assets_path.dart';
import '../../utils/utils.dart';
import '../../widgets/auth_widget_card.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';

class SetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "",
      ),
      body: SizedBox(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Utils.verticalSpace(48),
                VisualTitleInfo(
                  icon: KAssetsPath.passwordSvg,
                  title: kSetPasswordText,
                  subTitle: "",
                ),
                Utils.verticalSpace(30),
                AuthWidgetCard(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                        ),
                      ),
                      Utils.verticalSpace(10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      Utils.verticalSpace(16),
                      CustomButton(
                        textColor: Colors.white,
                        buttonColor: kPrimaryColor,
                        isElevated: true,
                        press: () {
                          Navigator.pushNamed(
                              context, RouteNames.fingerScreen);
                        },
                        text: kContinueText,
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
