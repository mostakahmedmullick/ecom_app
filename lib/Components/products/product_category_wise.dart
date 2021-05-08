import 'package:badges/badges.dart';
import 'package:ecom_app/Components/products/filter_page.dart';
import 'package:ecom_app/Components/products/product_details.dart';
import 'package:ecom_app/Components/products/product_grid.dart';
import 'package:ecom_app/constants/products_constant.dart';
import 'package:ecom_app/utils/ColorConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProductCategoryWise extends StatefulWidget {
  @override
  _ProductCategoryWiseState createState() => _ProductCategoryWiseState();
}

class _ProductCategoryWiseState extends State<ProductCategoryWise> {
  PanelController _pc1 = new PanelController();
  BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/svg-icon/left-arrow.svg',
            height: 15,
            width: 15,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Ecom',
          style: GoogleFonts.lato(),
        ),
        elevation: 0.0,
        bottomOpacity: 0.0,
        actions: <Widget>[
          Badge(
            position: BadgePosition.topEnd(top: 5, end: 5),
            badgeContent: Text(
              '5',
              style: GoogleFonts.lato(color: Colors.white),
            ),
            badgeColor: ColorConstants.secondaryColor,
            elevation: 0.0,
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/svg-icon/appbar-cart.svg',
                height: 20,
                width: 15,
              ),
              onPressed: () {
                print('hi');
              },
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4.0,
                    offset: Offset(0.0, 0.5),
                  )
                ],
              ),
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: SvgPicture.asset(
                                  'assets/svg-icon/sort-by.svg',
                                  width: 20,
                                  height: 15,
                                ),
                              ),
                              TextSpan(
                                text: "  Sort By",
                                style: GoogleFonts.lato(
                                    color: ColorConstants.primaryColorDark),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _visible = !_visible;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: SvgPicture.asset(
                                  'assets/svg-icon/filter.svg',
                                  width: 20,
                                  height: 15,
                                ),
                              ),
                              TextSpan(
                                text: "  Filter",
                                style: GoogleFonts.lato(
                                    color: ColorConstants.primaryColorDark),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FilterPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Flexible(
              child: GridView.builder(
                itemCount: ProductConstants.jeansImg.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                  childAspectRatio: screenWidth / 377.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return _productCardWidget(ProductConstants.jeansImg[index]);
                },
              ),
            ),
            // Visibility(
            //   maintainState: true,
            //   maintainAnimation: true,
            //   visible: _visible,
            //   child: SlidingUpPanel(
            //     isDraggable: true,
            //     controller: _pc1,
            //     panel: Center(
            //       child: Text('Center'),
            //     ),
            //     collapsed: Container(
            //       decoration:
            //           BoxDecoration(color: Colors.blueGrey, borderRadius: radius),
            //       child: Center(
            //         child: Text(
            //           "Panel 1",
            //           style: TextStyle(color: Colors.orange),
            //         ),
            //       ),
            //     ),
            //     body: Center(
            //         child: Text(
            //             "Panel 1 This is the Widget behind the sliding panel")),
            //     borderRadius: radius,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  // Product Card Design
  Widget _productCardWidget(String img) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetails()));
      },
      child: Card(
        elevation: 0.6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            // width: 1,
          ),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(top: 10.0, right: 5.0, bottom: 5.0, left: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: Image.network(
                      img,
                      height: 200.0,
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
                    'assets/svg-icon/rating.svg',
                  ),
                  half: SvgPicture.asset(
                    'assets/svg-icon/rating-half.svg',
                  ),
                  empty: SvgPicture.asset(
                    'assets/svg-icon/rating-empty.svg',
                  ),
                ),
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
                        color: ColorConstants.primaryColorDark,
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
                            'assets/svg-icon/cart-white.svg',
                            width: 15,
                            height: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: ColorConstants.secondaryColor,
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
  }
}
