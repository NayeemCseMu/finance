import 'package:country_code_picker/country_code_picker.dart';
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

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Registration",
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
                  title: kRegisterText,
                  subTitle: kOtpScreenText,
                ),
                Utils.verticalSpace(30),
                AuthWidgetCard(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        onChanged: (v) {},
                        initialValue: "",
                        decoration: InputDecoration(
                          hintText: "",
                          prefixIcon: CountryCodePicker(
                            padding: const EdgeInsets.only(bottom: 8),
                            onChanged: (country) {},
                            flagWidth: 35,
                            initialSelection: 'BD',
                            favorite: const ['+88', 'BD'],
                            showCountryOnly: false,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                          ),
                        ),
                      ),
                      Utils.verticalSpace(24),
                      CustomButton(
                        textColor: Colors.white,
                        buttonColor: kPrimaryColor,
                        isElevated: true,
                        press: () {
                          Navigator.pushNamed(
                              context, RouteNames.verification);
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
