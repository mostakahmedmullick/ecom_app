import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom_app/constants/products_constant.dart';
import 'package:ecom_app/utils/app_color_constants.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatefulWidget {
  @override
  _ProductImageSliderState createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1 / 1,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;                  
                });
              },
            ),
            items: ProductConstants.jeansImg
                .map(
                  (item) => Container(
                    child: Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        // side: BorderSide(
                        //   width: 1.0,
                        //   color: Color(0xFF707070),
                        // ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 80.0),
                        child: Image.network(
                          item,
                          width: 150,
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ProductConstants.jeansImg.map(
              (image) {
                int index = ProductConstants.jeansImg.indexOf(image);                
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? AppColorConstants.primaryColor
                          : Color.fromRGBO(0, 0, 0, 0.4)),
                );
              },
            ).toList(), // this was the part the I had to add
          ),
        ],
      ),
    );
  }
}
