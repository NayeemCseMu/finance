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

class AddLinkedAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Linked Account",
      ),
      body: SizedBox(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Utils.verticalSpace(48),
                VisualTitleInfo(
                  icon: KAssetsPath.linkAccount,
                  title: kLinkedCardText,
                  subTitle: "",
                ),
                Utils.verticalSpace(30),
                AuthWidgetCard(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Card Number",
                        ),
                      ),
                      Utils.verticalSpace(10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Full Name",
                        ),
                      ),
                      Utils.verticalSpace(16),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "CVV",
                              ),
                            ),
                          ),
                          Utils.horizontalSpace(10),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Exp Date",
                              ),
                            ),
                          ),
                        ],
                      ),
                      Utils.verticalSpace(20),
                      CustomButton(
                        textColor: Colors.white,
                        buttonColor: kPrimaryColor,
                        isElevated: true,
                        press: () {
                          Navigator.pushNamed(context, RouteNames.mooBank);
                        },
                        text: kContinueText,
                      )
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
