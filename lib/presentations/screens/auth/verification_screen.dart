import '../../config/routes/routes.dart';
import '../../widgets/visual_title_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_text.dart';
import '../../utils/assets_path.dart';
import '../../utils/utils.dart';
import '../../widgets/auth_widget_card.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: kVerificationText,
      ),
      body: SizedBox(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Utils.verticalSpace(48),
                VisualTitleInfo(
                  icon: KAssetsPath.verificationSvg,
                  title: kVerificationText,
                  subTitle: kVerificationScreenText,
                  isVerification: true,
                ),
                Utils.verticalSpace(30),
                AuthWidgetCard(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Pinput(
                        length: 4,
                        defaultPinTheme: PinTheme(
                            height: Utils.vSize(60.0),
                            width: Utils.hSize(60.0),
                            textStyle: GoogleFonts.poppins(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: BoxDecoration(
                              color: inputFieldBGColor,
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                color: borderColor,
                              )
                              // border: Border.symmetric(vertical: BorderSide()),
                            )),
                        onChanged: (String code) {},
                        onCompleted: (String code) {},
                      ),
                      Utils.verticalSpace(24),
                      CustomButton(
                        textColor: Colors.white,
                        buttonColor: kPrimaryColor,
                        isElevated: true,
                        press: () {
                          Navigator.pushNamed(
                              context, RouteNames.setPasswordScreen);
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
