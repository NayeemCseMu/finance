import 'package:finance/config/sizes.dart';
import 'package:finance/constants/app_constants.dart';
import 'package:finance/constants/app_text.dart';
import 'package:finance/constants/assets_path.dart';
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
          TextButton(
            child: Text(
              "Skip",
              style: TextStyle(color: kLightTextColor),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController _pageController;
  int pageIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveSize.screenHeight,
      width: ResponsiveSize.screenWidth,
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: PageView.builder(
                controller: _pageController,
                itemCount: walkthroughIllustration.length,
                onPageChanged: (v) {
                  setState(() {
                    pageIndex = v;
                  });
                },
                itemBuilder: (ctx, index) {
                  return Column(children: [
                    SvgPicture.asset(
                      walkthroughIllustration[index],
                      fit: BoxFit.cover,
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
                  ]);
                }),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(walkthroughIllustration.length, (index) {
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
                          : kInactiveDotColor),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
