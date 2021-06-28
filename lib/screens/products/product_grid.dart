import 'package:ecom_app/constants/products_constant.dart';
import 'package:ecom_app/utils/app_color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class ProductsGrid extends StatefulWidget {
  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  List<String> images = ProductConstants.jeansImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      child: Column(
        children: [
          // max two products in row
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Center(
                                child: Image.network(
                                  'https://rukminim1.flixcart.com/image/800/960/kk2wl8w0/jean/0/f/h/36-r1101-rasso-original-imafzgbhbgufmfmu.jpeg?q=50',
                                  height: 100.0,
                                ),
                              ),
                              Positioned(
                                child: ClipPath(
                                  clipper: StarClipper(14),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    color: Color(0xFFF54911),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          "50% OFF",
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                left: 0.0,
                                top: 0.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          RatingBar(
                            initialRating: 4.5,
                            itemSize: 12.0,
                            minRating: 4,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            unratedColor: Color(0xFFE1E1E1),
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            ratingWidget: RatingWidget(
                              full: SvgPicture.asset(
                                'assets/svg-icons/rating.svg',
                              ),
                              half: SvgPicture.asset(
                                'assets/svg-icons/rating-half.svg',
                              ),
                              empty: SvgPicture.asset(
                                'assets/svg-icons/rating-empty.svg',
                              ),
                            ),
                            onRatingUpdate: (double value) {},
                            // itemBuilder: (context, _) => Icon(
                            //   Icons.star,
                            //   color: Colors.amber,
                            // ),
                            // onRatingUpdate: (rating) {},
                          ),
                          Divider(
                            color: Color(0xFFE1E1E1),
                          ),
                          Text(
                            'Regular Men Blue Jeans Color Gray',
                            style: GoogleFonts.lato(),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Divider(
                            color: Color(0xFFE1E1E1),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'MRP \u{20B9}560',
                                  style: GoogleFonts.lato(
                                    decoration: TextDecoration.lineThrough,
                                    color: Color(
                                      0xFF8B8B8B,
                                    ),
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '\u{20B9}450',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: AppColorConstants.primaryColorDark,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: ElevatedButton(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "ADD TO CART  ",
                                      style: GoogleFonts.lato(),
                                    ),
                                    WidgetSpan(
                                      child: SvgPicture.asset(
                                        'assets/svg-icons/cart-white.svg',
                                        width: 15,
                                        height: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                primary: AppColorConstants.secondaryColor,
                              ),
                              onPressed: () {
                                print('hy');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Center(
                                child: Image.network(
                                  'https://rukminim1.flixcart.com/image/800/960/j6gs6fk0/jean/n/h/z/40-jog-hps-black-urbano-fashion-original-imaewxe7fgyx7u28.jpeg?q=50',
                                  height: 100.0,
                                ),
                              ),
                              Positioned(
                                child: ClipPath(
                                  clipper: StarClipper(14),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    color: Color(0xFFF54911),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          "25% OFF",
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                left: 0.0,
                                top: 0.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          RatingBar(
                            initialRating: 4.5,
                            itemSize: 12.0,
                            minRating: 4,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            unratedColor: Color(0xFFE1E1E1),
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            ratingWidget: RatingWidget(
                              full: SvgPicture.asset(
                                'assets/svg-icons/rating.svg',
                              ),
                              half: SvgPicture.asset(
                                'assets/svg-icons/rating-half.svg',
                              ),
                              empty: SvgPicture.asset(
                                'assets/svg-icons/rating-empty.svg',
                              ),
                            ),
                            onRatingUpdate: (double value) {},
                            // itemBuilder: (context, _) => Icon(
                            //   Icons.star,
                            //   color: Colors.amber,
                            // ),
                            // onRatingUpdate: (rating) {},
                          ),
                          Divider(
                            color: Color(0xFFE1E1E1),
                          ),
                          Text(
                            'Regular Men Blue Jeans Color Gray',
                            style: GoogleFonts.lato(),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Divider(
                            color: Color(0xFFE1E1E1),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'MRP \u{20B9}560',
                                  style: GoogleFonts.lato(
                                    decoration: TextDecoration.lineThrough,
                                    color: Color(
                                      0xFF8B8B8B,
                                    ),
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '\u{20B9}450',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: AppColorConstants.primaryColorDark,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: ElevatedButton(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "ADD TO CART  ",
                                      style: GoogleFonts.lato(),
                                    ),
                                    WidgetSpan(
                                      child: SvgPicture.asset(
                                        'assets/svg-icons/cart-white.svg',
                                        width: 15,
                                        height: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                primary: AppColorConstants.secondaryColor,
                              ),
                              onPressed: () {
                                print('hy');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // max two products in row
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Center(
                                child: Image.network(
                                  'https://rukminim1.flixcart.com/image/800/960/jydaqa80/jean/g/z/h/38-epssprcrs-lblue-urbano-fashion-original-imafgmhbhhgnucwa.jpeg?q=50',
                                  height: 100.0,
                                ),
                              ),
                              Positioned(
                                child: ClipPath(
                                  clipper: StarClipper(14),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    color: Color(0xFFF54911),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          "50% OFF",
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                left: 0.0,
                                top: 0.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          RatingBar(
                            initialRating: 4.5,
                            itemSize: 12.0,
                            minRating: 4,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            unratedColor: Color(0xFFE1E1E1),
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            ratingWidget: RatingWidget(
                              full: SvgPicture.asset(
                                'assets/svg-icons/rating.svg',
                              ),
                              half: SvgPicture.asset(
                                'assets/svg-icons/rating-half.svg',
                              ),
                              empty: SvgPicture.asset(
                                'assets/svg-icons/rating-empty.svg',
                              ),
                            ),
                            onRatingUpdate: (double value) {},
                            // itemBuilder: (context, _) => Icon(
                            //   Icons.star,
                            //   color: Colors.amber,
                            // ),
                            // onRatingUpdate: (rating) {},
                          ),
                          Divider(
                            color: Color(0xFFE1E1E1),
                          ),
                          Text(
                            'Regular Men Blue Jeans Color Gray',
                            style: GoogleFonts.lato(),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Divider(
                            color: Color(0xFFE1E1E1),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'MRP \u{20B9}560',
                                  style: GoogleFonts.lato(
                                    decoration: TextDecoration.lineThrough,
                                    color: Color(
                                      0xFF8B8B8B,
                                    ),
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '\u{20B9}450',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: AppColorConstants.primaryColorDark,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: ElevatedButton(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "ADD TO CART  ",
                                      style: GoogleFonts.lato(),
                                    ),
                                    WidgetSpan(
                                      child: SvgPicture.asset(
                                        'assets/svg-icons/cart-white.svg',
                                        width: 15,
                                        height: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                primary: AppColorConstants.secondaryColor,
                              ),
                              onPressed: () {
                                print('hy');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Center(
                                child: Image.network(
                                  'https://rukminim1.flixcart.com/image/800/960/k02qnww0/jean/z/z/z/38-fmjno0454-flying-machine-original-imafjs27y6eedvkz.jpeg?q=50',
                                  height: 100.0,
                                ),
                              ),
                              Positioned(
                                child: ClipPath(
                                  clipper: StarClipper(14),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    color: Color(0xFFF54911),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          "30% OFF",
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                          ),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                left: 0.0,
                                top: 0.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          // ignore: missing_required_param
                          RatingBar(
                            initialRating: 4.5,
                            itemSize: 12.0,
                            minRating: 4,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            unratedColor: Color(0xFFE1E1E1),
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            ratingWidget: RatingWidget(
                              full: SvgPicture.asset(
                                'assets/svg-icons/rating.svg',
                              ),
                              half: SvgPicture.asset(
                                'assets/svg-icons/rating-half.svg',
                              ),
                              empty: SvgPicture.asset(
                                'assets/svg-icons/rating-empty.svg',
                              ),
                            ),
                            onRatingUpdate: (double value) {},
                            // itemBuilder: (context, _) => Icon(
                            //   Icons.star,
                            //   color: Colors.amber,
                            // ),
                            // onRatingUpdate: (rating) {},
                          ),
                          Divider(
                            color: Color(0xFFE1E1E1),
                          ),
                          Text(
                            'Regular Men Blue Jeans Color Gray',
                            style: GoogleFonts.lato(),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Divider(
                            color: Color(0xFFE1E1E1),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'MRP \u{20B9}560',
                                  style: GoogleFonts.lato(
                                    decoration: TextDecoration.lineThrough,
                                    color: Color(
                                      0xFF8B8B8B,
                                    ),
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '\u{20B9}450',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: AppColorConstants.primaryColorDark,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: ElevatedButton(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "ADD TO CART  ",
                                      style: GoogleFonts.lato(),
                                    ),
                                    WidgetSpan(
                                      child: SvgPicture.asset(
                                        'assets/svg-icons/cart-white.svg',
                                        width: 15,
                                        height: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                primary: AppColorConstants.secondaryColor,
                              ),
                              onPressed: () {
                                print('hy');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StarClipper extends CustomClipper<Path> {
  StarClipper(this.numberOfPoints);

  /// The number of points in the star
  final int numberOfPoints;

  @override
  Path getClip(Size size) {
    double width = size.width;
    double halfWidth = width / 2;

    double bigRadius = halfWidth;

    double radius = halfWidth / 1.3;

    num degreesPerStep = _degToRad(360 / numberOfPoints);

    double halfDegreesPerStep = degreesPerStep / 2;

    var path = Path();

    double max = 2 * math.pi;

    path.moveTo(width, halfWidth);

    for (double step = 0; step < max; step += degreesPerStep) {
      path.lineTo(halfWidth + bigRadius * math.cos(step),
          halfWidth + bigRadius * math.sin(step));
      path.lineTo(halfWidth + radius * math.cos(step + halfDegreesPerStep),
          halfWidth + radius * math.sin(step + halfDegreesPerStep));
    }

    path.close();
    return path;
  }

  num _degToRad(num deg) => deg * (math.pi / 180.0);

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    StarClipper oldie = oldClipper as StarClipper;
    return numberOfPoints != oldie.numberOfPoints;
  }
}
