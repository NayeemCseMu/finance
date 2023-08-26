import 'package:finance/presentations/widgets/visual_title_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/routes/routes.dart';
import '../../utils/app_constants.dart';
import '../../utils/app_text.dart';
import '../../utils/assets_path.dart';
import '../../utils/utils.dart';
import '../../widgets/auth_widget_card.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';

class FingerPrintScreen extends StatelessWidget {
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
                  icon: KAssetsPath.fingerprintSvg,
                  title: kFingerPrintText,
                  subTitle: kFingerResetText,
                  isVerification: true,
                ),
                Utils.verticalSpace(60),
                SvgPicture.asset(KAssetsPath.fingerprintIconSvg),
                Utils.verticalSpace(70),
                CustomButton(
                  textColor: Colors.white,
                  buttonColor: kPrimaryColor,
                  isElevated: true,
                  press: () {
                    Navigator.pushNamed(
                        context, RouteNames.loginScreen);
                  },
                  text: kContinueText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
