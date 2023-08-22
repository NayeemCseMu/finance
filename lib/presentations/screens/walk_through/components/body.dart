import 'package:finance/presentations/config/sizes.dart';
import 'package:finance/presentations/utils/app_constants.dart';
import 'package:finance/presentations/utils/app_text.dart';
import 'package:finance/presentations/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<String> walkthroughIllustration = [
  walkthrough_first,
  walkthrough_second,
  walkthrough_third
];
List<String> walkthrughHeading = [
  kQuickText,
  kShoppingText,
  kManageFinanceText
];

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late PageController _pageController;
  int pageIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveSize.screenHeight,
      width: ResponsiveSize.screenWidth,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                itemCount: walkthroughIllustration.length,
                onPageChanged: (v) {
                  setState(() {
                    pageIndex = v;
                  });
                },
                itemBuilder: (ctx, index) {
                  return Container(
                    child: Column(children: [
                      SvgPicture.asset(
                        walkthroughIllustration[index],
                        width: ResponsiveSize.screenWidth,
                        fit: BoxFit.cover,
                        matchTextDirection: true,
                      ),
                      getVerticalSpace(42),
                      Text(
                        walkthrughHeading[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: getTextSize(28),
                            color: kDarkTextColor),
                      ),
                      getVerticalSpace(25),
                      SizedBox(
                        width: getScreeWidth(285),
                        child: Text(
                          kLoremText,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: kLightTextColor),
                        ),
                      )
                    ]),
                  );
                }),
          ),
          Container(
            height: ResponsiveSize.screenHeight! * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                walkthroughIllustration.length,
                (index) {
                  return AnimatedContainer(
                    height: getScreenHeight(6),
                    width: getScreeWidth(6),
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == pageIndex
                          ? kPrimaryColor
                          : kInactiveDotColor,
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
