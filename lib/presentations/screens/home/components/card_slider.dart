import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance/presentations/utils/assets_path.dart';
import 'package:flutter/material.dart';

class CardSlider extends StatefulWidget {
  const CardSlider({super.key});

  @override
  State<CardSlider> createState() => _CardSliderState();
}

class _CardSliderState extends State<CardSlider> {
  final int initialPage = 0;
  int currentIndex = 0;

  final cardItems = [
    Image.asset(KAssetsPath.creditCard),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: cardItems,
        options: CarouselOptions(
          // height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ));
  }

  void callbackFunction(int index, CarouselPageChangedReason reason) {
    setState(() {
      currentIndex = index;
    });
  }
}
