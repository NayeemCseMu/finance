import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import '../utils/utils.dart';
import 'custom_text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.onTap,
    this.horSpace = 20.0,
    this.bgColor = Colors.transparent,
    this.textColor = blackColor,
    this.iconColor = Colors.white,
    this.iconBgColor = kPrimaryColor,
  }) : super(key: key);
  final String title;
  final double horSpace;
  final Color bgColor;
  final Color textColor;
  final Color iconColor;
  final Color iconBgColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      centerTitle: true,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: CircleAvatar(
              maxRadius: 18.0,
              backgroundColor: iconBgColor,
              child: Icon(
                Icons.arrow_back,
                size: 22.0,
                color: iconColor,
              ),
            ),
          ),
          Utils.hSpace(horSpace),
          CustomText(
            text: title,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ],
      ),
      toolbarHeight: Utils.vSize(70.0),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Utils.vSize(70.0));
}
