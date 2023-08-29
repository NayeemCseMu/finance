import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance/presentations/utils/assets_path.dart';
import 'package:finance/presentations/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/dummy_data/dummy_data.dart';
import 'components/card_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0B0320),
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: Column(
          children: [
            Utils.verticalSpace(32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Row(
                children: [
                  CircleAvatar(),
                  Utils.horizontalSpace(10),
                  Expanded(
                    child: Text(
                      'Hi, Azraf',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    KAssetsPath.grid,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Utils.verticalSpace(32),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(top: 30.h),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
              child: Column(children: [
                CardSlider(),
                Utils.verticalSpace(60),
                Expanded(
                    child: GridView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        itemCount: homeItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 20),
                        itemBuilder: (c, i) {
                          return Container(
                            width: 96,
                            height: 112,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x0C202023),
                                  blurRadius: 35,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  homeItems[i]['icon']!,
                                  height: 40,
                                  width: 40,
                                ),
                                Utils.verticalSpace(15),
                                Text(
                                  homeItems[i]['text']!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF8C8A9A),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          );
                        }))
              ]),
            )),
            Container(
              height: 1,
              decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
            ),
            Utils.verticalSpace(kBottomNavigationBarHeight)
          ],
        ),
      ),
    );
  }
}
