import 'package:ecom_app/constants/products_constant.dart';
import 'package:ecom_app/utils/app_color_constants.dart';
import 'package:ecom_app/utils/star_clipper_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductRelated extends StatefulWidget {
  const ProductRelated({Key? key}) : super(key: key);

  @override
  _ProductRelatedState createState() => _ProductRelatedState();
}

class _ProductRelatedState extends State<ProductRelated> {
  @override
  Widget build(BuildContext context) {
    return buildProductRelatedCardList();
  }

  Widget buildProductRelatedCardList() {
    return ListView.builder(
      // physics: NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: ProductConstants.jeansImg.length,
      itemBuilder: (context, index) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Card(
            margin: (index == 0)
                ? const EdgeInsets.only(
                    top: 4.0,
                    right: 4.0,
                    bottom: 4.0,
                    left: 16.0,
                  )
                : (index == ProductConstants.jeansImg.length - 1)
                    ? const EdgeInsets.only(
                        top: 4.0,
                        right: 16.0,
                        bottom: 4.0,
                        left: 4.0,
                      )
                    : const EdgeInsets.all(4.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Image.network(
                          'https://rukminim1.flixcart.com/image/800/960/juyev0w0/kurta/g/z/d/3xl-jne3291-kr-janasya-original-imaffxuhfs4cykus.jpeg?q=50',
                          height: 140.0,
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
                    'Women Block Print, Geometric Print, Printed',
                    style: GoogleFonts.lato(),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Divider(
                    color: Color(0xFFE1E1E1),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
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
                      Text(
                        '\u{20B9}450',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          color: AppColorConstants.primaryColorDark,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
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
        );
      },
    );
  }
}
