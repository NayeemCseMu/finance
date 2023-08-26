import '../../utils/app_constants.dart';
import '../../widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            press: () {},
          ),
        ],
      ),
      body: Body(),
    );
  }
}
