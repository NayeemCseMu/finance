import 'package:finance/presentations/config/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/dummy_data/dummy_data.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/utils.dart';

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
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: PageView.builder(
                controller: _pageController,
                itemCount: onboardData.length,
                onPageChanged: (v) {
                  setState(() {
                    pageIndex = v;
                  });
                },
                itemBuilder: (ctx, index) {
                  return Container(
                    child: Column(children: [
                      Expanded(
                        child: SvgPicture.asset(
                          onboardData[index].image,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          matchTextDirection: true,
                        ),
                      ),
                      Utils.verticalSpace(42),
                      Text(
                        onboardData[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 28.sp,
                            color: kDarkTextColor),
                      ),
                      Utils.verticalSpace(24),
                      SizedBox(
                        width: 285.w,
                        child: Text(
                          onboardData[index].subtitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: kLightTextColor),
                        ),
                      ),
                    ]),
                  );
                }),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Container(
              // height: ResponsiveSize.screenHeight * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardData.length,
                  (index) {
                    return AnimatedContainer(
                      height: 6.h,
                      width: 6.w,
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
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: kPrimaryColor,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_right_alt_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if(_pageController.page != onboardData.length -1){
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
                    }else{
                      Navigator.pushReplacementNamed(context, RouteNames.welcome);
                    }

                  },
                ) ,
              ),
            ),
          ),
          Utils.verticalSpace(48),
        ],
      ),
    );
  }
}
