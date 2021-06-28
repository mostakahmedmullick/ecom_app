import 'package:badges/badges.dart';
import 'package:ecom_app/screens/products/product_image_slider.dart';
import 'package:ecom_app/utils/app_color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<String> _sizeList = ['S', 'M', 'L', 'XL', 'XXL', 'XXXL'];
  final _pincodeController = TextEditingController();

  int _currectSize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/svg-icons/left-arrow.svg',
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
            badgeColor: AppColorConstants.secondaryColor,
            elevation: 0.0,
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/svg-icons/appbar-cart.svg',
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Product Image slider
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProductImageSlider(),
                            // Attribute title
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4.0, horizontal: 16.0),
                              child: Text(
                                "Size:",
                                style: GoogleFonts.lato(
                                  fontSize: 16.0,
                                  color: AppColorConstants.primaryColorDark,
                                ),
                              ),
                            ),
                            // Attribute list
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 0.0,
                                  right: 12.0,
                                  bottom: 12.0,
                                  left: 12.0),
                              child: buildSizeWrap(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      // Product details summary
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Product category
                            Text(
                              "Jeans",
                              style: GoogleFonts.lato(
                                fontSize: 14.0,
                                color: AppColorConstants.primaryColor,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            // Product title
                            Text(
                              "Slim Men Dark Blue Jeans Slim Men Dark Blue Jeans",
                              style: GoogleFonts.lato(
                                fontSize: 22.0,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            // Product rating
                            RatingBar(
                              initialRating: 4.5,
                              itemSize: 12.0,
                              minRating: 4,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              unratedColor: Color(0xFFE1E1E1),
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 2.0),
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
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            // Product MRP
                            Text(
                              'MRP \u{20B9}560',
                              style: GoogleFonts.lato(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough,
                                color: Color(
                                  0xFF8B8B8B,
                                ),
                              ),
                            ),
                            // Product price
                            Text(
                              'Price \u{20B9}450',
                              style: GoogleFonts.lato(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: AppColorConstants.primaryColorDark,
                              ),
                            ),
                            // Save or inclusive tax tite
                            RichText(
                              text: TextSpan(
                                style: GoogleFonts.lato(
                                  fontSize: 12.0,
                                  color: AppColorConstants.fontColor,
                                ),
                                children: [
                                  TextSpan(
                                    text: "You Save: ₹100 ",
                                    style: GoogleFonts.lato(
                                      color: AppColorConstants.primaryColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "(Inclusive of all taxes)",
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            // Quantity Title
                            Text(
                              "Quantity:",
                              style: GoogleFonts.lato(
                                color: AppColorConstants.fontColor,
                              ),
                            ),
                            // Quantity Field
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: TextButton(
                                      child: Icon(Icons.remove),
                                      style: TextButton.styleFrom(
                                        primary: Colors.white,
                                        backgroundColor:
                                            AppColorConstants.primaryColorDark,
                                        onSurface: Colors.grey,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5.0),
                                            bottomLeft: Radius.circular(5.0),
                                          ),
                                        ),
                                        minimumSize: Size.zero,
                                        padding: EdgeInsets.all(5.0),
                                      ),
                                      onPressed: () {
                                        // print('Pressed');
                                      },
                                    ),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    fit: FlexFit.tight,
                                    child: Container(
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  color: AppColorConstants
                                                      .primaryColorDark,
                                                  width: 1.5))),
                                      child: Text(
                                        "1",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: TextButton(
                                      child: Icon(Icons.add),
                                      style: TextButton.styleFrom(
                                        primary: Colors.white,
                                        backgroundColor:
                                            AppColorConstants.primaryColorDark,
                                        onSurface: Colors.grey,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5.0),
                                            bottomRight: Radius.circular(5.0),
                                          ),
                                        ),
                                        minimumSize: Size.zero,
                                        padding: EdgeInsets.all(5.0),
                                      ),
                                      onPressed: () {
                                        // print('Pressed');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            // Quantity Title
                            Text(
                              "Check Pincode:",
                              style: GoogleFonts.lato(
                                color: AppColorConstants.fontColor,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            // Pincode Area
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: _pincodeController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Enter Pincode',
                                        isDense: true,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 12.0,
                                                horizontal: 8.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  SizedBox(
                                    height: 42.0,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0.0,
                                        primary: AppColorConstants.primaryColor,
                                      ),
                                      child: Text(
                                        "CHECK",
                                        style: GoogleFonts.lato(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // padding: const EdgeInsets.all(0.0),
              // margin: const EdgeInsets.all(0.0),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 56.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: AppColorConstants.secondaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                        child: Text(
                          "ADD TO CART",
                          style: GoogleFonts.lato(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 56.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: AppColorConstants.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                        child: Text(
                          "BUY NOW",
                          style: GoogleFonts.lato(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSizeWrap() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      children: _sizeList.map((size) {
        int index = _sizeList.indexOf(size);
        return Card(
          elevation: 0.0,
          margin: const EdgeInsets.all(4.0),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2.0,
              color: _currectSize == index
                  ? AppColorConstants.primaryColor
                  : Color(0xFFF0F0F0),
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                _currectSize = index;
              });
            },
            child: SizedBox(
              width: 56.0,
              height: 56.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    size,
                    style: GoogleFonts.lato(
                      color: _currectSize == index
                          ? AppColorConstants.primaryColor
                          : Color(0xFF000000),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
