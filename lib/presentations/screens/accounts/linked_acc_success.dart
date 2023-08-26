import 'package:flutter/material.dart';

import '../../config/routes/routes.dart';
import '../../utils/app_constants.dart';
import '../../utils/app_text.dart';
import '../../utils/assets_path.dart';
import '../../utils/utils.dart';
import '../../widgets/auth_widget_card.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/visual_title_info.dart';

class LinkedAccountSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Linked Account",
      ),
      body: SizedBox(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Utils.verticalSpace(48),
                VisualTitleInfo(
                  icon: KAssetsPath.linkSuccess,
                  title: kLinkedCardSuccessText,
                  subTitle: chooseThankText,
                ),
                Utils.verticalSpace(30),
                CustomButton(
                  textColor: Colors.white,
                  buttonColor: kPrimaryColor,
                  isElevated: true,
                  press: () {
                    Navigator.pushNamed(context, RouteNames.home);
                  },
                  text: kgetStartedText,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
