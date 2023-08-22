import 'package:country_code_picker/country_code_picker.dart';
import 'package:finance/presentations/config/sizes.dart';
import 'package:finance/presentations/utils/app_text.dart';
import 'package:finance/presentations/utils/assets_path.dart';
import 'package:finance/presentations/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_constants.dart';

class RegistrationScreen extends StatelessWidget {
  static final String routeName = "/registration";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        titleSpacing: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kDarkTextColor,
          ),
          onPressed: () {},
        ),
        actions: [
          TextButton(
            child: Text(
              "Log In",
              style: kMediumStyle.copyWith(
                color: kPrimaryColor,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SizedBox(
        height: ResponsiveSize.screenHeight,
        width: ResponsiveSize.screenWidth,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                getVerticalSpace(50),
                SvgPicture.asset(registrationSvg),
                getVerticalSpace(50),
                Text(
                  kRegisterText,
                  style: kSemiBoldStyle.copyWith(
                    fontSize: getTextSize(22),
                  ),
                ),
                getVerticalSpace(10),
                Text(
                  kOtpScreenText,
                  style: kNormalStyle.copyWith(
                    color: kLightTextColor,
                    fontSize: getTextSize(14),
                  ),
                ),
                getVerticalSpace(60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        // hintText: "01746*******",
                        prefix: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: getScreenHeight(20),
                              child: CountryCodePicker(
                                onChanged: print,
                                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                initialSelection: 'IT',
                                favorite: ['+39', 'FR'],
                                countryFilter: ['IT', 'FR'],
                                showFlagDialog: false,
                                comparator: (a, b) => b.name!.compareTo(a.name!),
                                //Get the country information relevant to the initial selection
                                onInit: (code) => print(
                                    "on init ${code!.name} ${code.dialCode} ${code.name}"),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 0.2,
                              color: Colors.black,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                            ),
                          ],
                        ),
                        border: _outlineInputBorder(),
                        focusedBorder: _outlineInputBorder()),
                  ),
                ),
                getVerticalSpace(20),
                CustomButton(
                  textColor: Colors.white,
                  buttonColor: kPrimaryColor,
                  isElevated: true,
                  press: () {},
                  text: kContinueText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: 0.2,
        color: kLightTextColor,
      ),
    );
  }
}
