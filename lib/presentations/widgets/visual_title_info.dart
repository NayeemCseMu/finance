import 'package:finance/presentations/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VisualTitleInfo extends StatelessWidget {
  const VisualTitleInfo(
      {Key? key,
      required this.icon,
      this.isVerification = false,
      required this.title,
      required this.subTitle})
      : super(key: key);
  final String icon;
  final String title;
  final String subTitle;
  final bool isVerification;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(icon),
        Utils.verticalSpace(50),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF0B0320),
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        Utils.verticalSpace(10),
        if (isVerification)
          SizedBox(
            width: 287,
            height: 68,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Please enter code that sent to\nyour phone number in the form below.\nThis code will expired in ',
                    style: TextStyle(
                      color: Color(0xFF8C8A9A),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.57,
                    ),
                  ),
                  TextSpan(
                    text: '00:30',
                    style: TextStyle(
                      color: Color(0xFFFE561E),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.57,
                    ),
                  ),
                  TextSpan(
                    text: ' sceo      nds.',
                    style: TextStyle(
                      color: Color(0xFF8C8A9A),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.57,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          )
        else if(subTitle.isNotEmpty)
          SizedBox(
            width: 245.w,
            height: 45.h,
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF8C8A9A),
                fontSize: 14.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 1.57,
              ),
            ),
          ),
      ],
    );
  }
}
