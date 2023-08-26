import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_constants.dart';
import '../../../utils/app_text.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/utils.dart';


class FingerPopUp extends StatelessWidget {
  const FingerPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    KAssetsPath.clearIcon,
                  ),
                )),
            Utils.verticalSpace(25),
            CircleAvatar(
              backgroundColor: Color(0xFF00CACE),
              child: SvgPicture.asset(KAssetsPath.checkIcon),
            ),
            Utils.verticalSpace(25),
            Text(
              kFingerAuthText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kDarkTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Utils.verticalSpace(10),
            Text(
              kFingerLogText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kLightTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.57,
              ),
            ),
            Utils.verticalSpace(50),
            SvgPicture.asset(
              KAssetsPath.fingerprintIconSvg,
              color: kPrimaryColor,
            ),
            Utils.verticalSpace(40),
          ],
        ),
      ),
    );
  }
}
