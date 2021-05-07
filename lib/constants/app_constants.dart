import 'package:finance/config/sizes.dart';
import 'package:flutter/material.dart';

/*<-----------------App Color----------------->*/
const Color kPrimaryColor = Color(0xff531EDC);
const Color kSecondaryColor = Color(0xffE6344A);
const Color kDarkTextColor = Color(0xff0B0320);
const Color kLightTextColor = Color(0xff8C8A9A);
const Color kYellowColor = Color(0xffF5BA03);
const Color kBlueColor = Color(0xff3EC9DC);
const Color kInactiveDotColor = Color(0xffD1D1D1);

/*<-----------------App TextStyle----------------->*/
TextStyle kNormalStyle = TextStyle(
  fontSize: getTextSize(12),
  color: kDarkTextColor,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
);
TextStyle kMediumStyle = TextStyle(
  fontSize: getTextSize(14),
  color: kDarkTextColor,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
);
TextStyle kSemiBoldStyle = TextStyle(
  fontSize: getTextSize(16),
  color: kDarkTextColor,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
);
TextStyle kBoldStyle = TextStyle(
  fontSize: getTextSize(20),
  color: kDarkTextColor,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
);
