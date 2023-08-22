import 'package:finance/presentations/config/sizes.dart';
import 'package:finance/presentations/utils/app_constants.dart';
import 'package:finance/presentations/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../auth/welcome_screen.dart';
import 'components/body.dart';

class WalkThroughScreen extends StatelessWidget {
  static final String routeName = "/walk_through";
  @override
  Widget build(BuildContext context) {
    ResponsiveSize.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          CustomButton(
            text: "Skip",
            textColor: kLightTextColor,
            buttonColor: Colors.transparent,
            isElevated: false,
            press: (){
              
            },
          ),
        ],
      ),
      body: Body(),
    );
  }
}
