// import 'package:flutter/material.dart';

// class ResponsiveSize {
//   static MediaQueryData? _mediaQueryData;
//   static double screenHeight = 0;
//   static double screenWidth = 0;
//   static Orientation orientation = Orientation.portrait;

//   static void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);

//     orientation = _mediaQueryData!.orientation;

//     if (orientation == Orientation.portrait) {
//       screenHeight = _mediaQueryData!.size.height;
//       screenWidth = _mediaQueryData!.size.width;
//     } else {
//       screenHeight = _mediaQueryData!.size.width;
//       screenWidth = _mediaQueryData!.size.height;
//     }
//     // print(screenHeight);
//     // print(screenWidth);
//   }
// }

// double getScreenHeight(double inputHeight) {
//   return (inputHeight / 812) * ResponsiveSize.screenHeight;
// }

// double getScreeWidth(double inputWidth) {
//   return (inputWidth / 375) * ResponsiveSize.screenWidth;
// }

// double getTextSize(double inputSize) {
//   return (inputSize / 812) * ResponsiveSize.screenHeight;
// }

// Widget getVerticalSpace(double height) {
//   return SizedBox(height: getScreenHeight(height));
// }

// Widget getHorizontalSpace(double width) {
//   return SizedBox(width: getScreeWidth(width));
// }
