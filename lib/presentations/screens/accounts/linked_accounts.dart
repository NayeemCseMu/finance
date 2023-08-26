import 'package:finance/presentations/utils/assets_path.dart';
import 'package:finance/presentations/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/dummy_data/dummy_data.dart';
import '../../utils/utils.dart';

class LinkedAccountsCard extends StatelessWidget {
  const LinkedAccountsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Link Account"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Utils.verticalSpace(0),
            Text(
              'Bank account',
              style: TextStyle(
                color: Color(0xFF0B0320),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            Utils.verticalSpace(18),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                spacing: 25,
                runSpacing: 25,
                runAlignment: WrapAlignment.spaceAround,
                children: [
                  ...bankAccount.map((e) => PaymentCard(icon: e)),
                ],
              ),
            ),
            Utils.verticalSpace(30),
            Text(
              'International account',
              style: TextStyle(
                color: Color(0xFF0B0320),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            Utils.verticalSpace(18),
            Wrap(
              spacing: 25,
              runSpacing: 25,
              runAlignment: WrapAlignment.center,
              children: [
                ...intAccount.map((e) => PaymentCard(icon: e)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
    required this.icon,
  });
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 92,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
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
      child: SvgPicture.asset(
        icon,
        height: 24,
        width: 24,
      ),
    );
  }
}
