import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeTopSlider extends StatelessWidget {
  final List<String> imgList = ['assets/images/slider-1.png'];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(autoPlay: true,aspectRatio: 3/1, viewportFraction: 1.0),
      items: imgList
          .map(
            (item) => Container(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: Image.asset(item, fit: BoxFit.fill, width: 1000,),
            ),
          )
          .toList(),
    );
  }
}
