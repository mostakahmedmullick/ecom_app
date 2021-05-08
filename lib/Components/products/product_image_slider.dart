import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom_app/constants/products_constant.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(aspectRatio: 1/1, viewportFraction: 1.0, enableInfiniteScroll: false),
      items: ProductConstants.jeansImg
          .map(
            (item) => Image.network(item, width: 150, alignment: Alignment.topCenter,),
          )
          .toList(),
    );
  }
}