import 'package:finance/presentations/utils/app_constants.dart';
import 'package:finance/presentations/utils/assets_path.dart';
import 'package:finance/presentations/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                SvgPicture.asset(KAssetsPath.filterMenu),
              ],
            ),
            Utils.verticalSpace(20),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      KAssetsPath.search,
                      height: 24.h,
                      width: 24.w,
                      color: kLightTextColor,
                    ),
                  ),
                  hintText: "Search"),
            ),
            Utils.verticalSpace(20),
            Expanded(
                child: ListView.separated(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    separatorBuilder: (context, index) => Divider(
                          color: blackColor.withOpacity(0.1),
                        ),
                    itemCount: historyList.length,
                    itemBuilder: (c, i) {
                      return Row(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                historyList[i]['date']!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF0B0320),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Oct',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF8C8A9A),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Utils.horizontalSpace(16),
                          Expanded(
                            child: ListTile(
                              horizontalTitleGap: 20.w,
                              leading: Container(
                                width: 40,
                                height: 40,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x19202023),
                                      blurRadius: 15,
                                      offset: Offset(0, 0),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  historyList[i]['icon']!,
                                ),
                              ),
                              title: Text(
                                historyList[i]['name']!,
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF0B0320),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              subtitle: Text(
                                historyList[i]['payment_method']!,
                                style: TextStyle(
                                  color: Color(0xFF8C8A9A),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              trailing: Text(
                                '\$${historyList[i]['amount']!}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color(0xFF0B0320),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

List<Map<String, String>> historyList = [
  {
    "date": "24",
    "icon": KAssetsPath.idea,
    "name": "Electric Bill",
    "payment_method": "Bank",
    "amount": "155.00"
  },
  {
    "date": "25",
    "icon": KAssetsPath.phone,
    "name": "Telephone Bill",
    "payment_method": "Visa",
    "amount": "15.00"
  },
  {
    "date": "26",
    "icon": KAssetsPath.rain,
    "name": "Water Bill",
    "payment_method": "Cash",
    "amount": "55.00"
  },
  {
    "date": "27",
    "icon": KAssetsPath.wifi,
    "name": "Internet Bill",
    "payment_method": "Mastercard",
    "amount": "45.00"
  },
  {
    "date": "24",
    "icon": KAssetsPath.idea,
    "name": "Electric Bill",
    "payment_method": "Bank",
    "amount": "155.00"
  },
  {
    "date": "26",
    "icon": KAssetsPath.rain,
    "name": "Water Bill",
    "payment_method": "Cash",
    "amount": "55.00"
  },
];
