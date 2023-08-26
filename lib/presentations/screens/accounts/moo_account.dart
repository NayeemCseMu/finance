import 'package:flutter/material.dart';

import '../../config/routes/routes.dart';
import '../../utils/app_constants.dart';
import '../../utils/app_text.dart';
import '../../utils/assets_path.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/visual_title_info.dart';

class MooBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "",
      ),
      body: SizedBox(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Utils.verticalSpace(10),
                Text(
                  'MooBank',
                  style: TextStyle(
                    color: Color(0xFF0B0320),
                    fontSize: 26,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Utils.verticalSpace(10),
                Text(
                  'Please enter the accureate information that\nyou have registered with MoonBank',
                  style: TextStyle(
                    color: Color(0xFF8C8A9A),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.57,
                  ),
                ),
                Utils.verticalSpace(55),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Card Number",
                  ),
                ),
                Utils.verticalSpace(10),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Card Holder Name",
                  ),
                ),
                Utils.verticalSpace(16),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Identity card/passport",
                  ),
                ),
                Utils.verticalSpace(30),
                CustomButton(
                  textColor: Colors.white,
                  buttonColor: kPrimaryColor,
                  isElevated: true,
                  press: () {
                    Navigator.pushNamed(context, RouteNames.linkAccountSuccess);
                  },
                  text: kContinueText,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
