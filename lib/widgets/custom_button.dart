import 'package:finance/config/sizes.dart';
import 'package:finance/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback press;
  final bool isElevated;

  const CustomButton({
    @required this.text,
    @required this.textColor,
    @required this.buttonColor,
    @required this.press,
    @required this.isElevated,
  }) : assert(text != null, textColor != null);
  @override
  Widget build(BuildContext context) {
    return isElevated
        ? CustomElevatedButton(
            text: text,
            color: textColor,
            buttonColor: buttonColor,
            press: press)
        : CustomTextButton(text: text, color: textColor, press: press);
  }
}

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color buttonColor;
  final VoidCallback press;

  const CustomElevatedButton({
    @required this.text,
    @required this.color,
    @required this.buttonColor,
    @required this.press,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(48),
      width: getScreeWidth(325),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24))),
        child: Text(
          text,
          style: kSemiBoldStyle.copyWith(color: color),
        ),
        onPressed: press,
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback press;

  const CustomTextButton({
    @required this.text,
    @required this.color,
    @required this.press,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: kSemiBoldStyle.copyWith(color: color),
      ),
      onPressed: press,
    );
  }
}
