import 'package:ecom_app/screens/checkout/checkout_address.dart';
import 'package:ecom_app/utils/app_color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: AppColorConstants.primaryColor,
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
          "My Cart",
          style: GoogleFonts.lato(),
        ),
        elevation: 0.0,
        bottomOpacity: 0.0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(0.0),
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 6)
                    return _cartPriceDetailsCardWithPlaceOrder();
                  else
                    return _productCardWidget();
                },
              ),
            ),
            _placeOrderButton(),
          ],
        ),
      ),
    );
  }

  Widget _cartPriceDetailsCardWithPlaceOrder() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          // Price Of all items
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Price (2 items)",
                style: GoogleFonts.lato(
                  fontSize: 14.0,
                  color: AppColorConstants.fontColor,
                ),
              ),
              Text(
                '\u{20B9}450',
                style: GoogleFonts.lato(
                  fontSize: 14.0,
                  color: AppColorConstants.fontColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.0,
          ),
          // Discount
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount",
                style: GoogleFonts.lato(
                  fontSize: 14.0,
                  color: AppColorConstants.fontColor,
                ),
              ),
              Text(
                '-\u{20B9}55',
                style: GoogleFonts.lato(
                  fontSize: 14.0,
                  color: AppColorConstants.primaryColorDark,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.0,
          ),
          // Subtotal
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subtotal",
                style: GoogleFonts.lato(
                  fontSize: 14.0,
                  color: AppColorConstants.fontColor,
                ),
              ),
              Text(
                '\u{20B9}395',
                style: GoogleFonts.lato(
                  fontSize: 14.0,
                  color: AppColorConstants.fontColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.0,
          ),
          // Shipping Charges
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shipping Charges",
                style: GoogleFonts.lato(
                  fontSize: 14.0,
                  color: AppColorConstants.fontColor,
                ),
              ),
              Text(
                'FREE',
                style: GoogleFonts.lato(
                  fontSize: 14.0,
                  color: AppColorConstants.primaryColorDark,
                ),
              ),
            ],
          ),
          Divider(),
          // Total
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: GoogleFonts.lato(
                  fontSize: 18.0,
                  color: AppColorConstants.primaryColorDark,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '\u{20B9}395',
                style: GoogleFonts.lato(
                  fontSize: 18.0,
                  color: AppColorConstants.primaryColorDark,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Product Card Design
  Widget _productCardWidget() {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          // width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 8.0, right: 8.0, bottom: 8.0, left: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image with offer tag
            Expanded(
              flex: 2,
              child: Center(
                child: Image.network(
                  "https://rukminim1.flixcart.com/image/800/960/k02qnww0/jean/z/z/z/38-fmjno0454-flying-machine-original-imafjs27y6eedvkz.jpeg?q=50",
                  fit: BoxFit.fill,
                  height: 100.0,
                ),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Product Title
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Regular Men Blue Jeans Color Gray",
                          style: GoogleFonts.lato(
                            fontSize: 14.0,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        icon: SvgPicture.asset(
                          "assets/svg-icons/delete.svg",
                        ),
                        splashRadius: 16.0,
                        padding: const EdgeInsets.all(0.0),
                        constraints: BoxConstraints(
                          maxWidth: 32.0,
                          maxHeight: 32.0,
                        ),
                        onPressed: () {},
                      ),
                    ],
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
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  // Product attribute like- Size
                  Text(
                    "Size: S",
                    style: GoogleFonts.lato(
                      fontSize: 12.0,
                      color: AppColorConstants.greyFontColor,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  // MRP and Quantity field
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Product MRP
                          Text(
                            'MRP \u{20B9}560000',
                            style: GoogleFonts.lato(
                              decoration: TextDecoration.lineThrough,
                              color: AppColorConstants.greyFontColor,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          // Product Price
                          Text(
                            '\u{20B9}450',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              color: AppColorConstants.primaryColorDark,
                              fontSize: 18.0,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      // Quantity Field
                      Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: TextButton(
                                  child: Icon(
                                    Icons.remove,
                                    size: 20.0,
                                  ),
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor:
                                        AppColorConstants.secondaryColor,
                                    onSurface: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0),
                                      ),
                                    ),
                                    minimumSize: Size.zero,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 4.0),
                                  ),
                                  onPressed: () {
                                    // print('Pressed');
                                  },
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                      border: Border.symmetric(
                                          horizontal: BorderSide(
                                              color: AppColorConstants
                                                  .secondaryColor,
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
                                  child: Icon(
                                    Icons.add,
                                    size: 20.0,
                                  ),
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor:
                                        AppColorConstants.secondaryColor,
                                    onSurface: Colors.grey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    minimumSize: Size.zero,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 6.0, horizontal: 4.0),
                                  ),
                                  onPressed: () {
                                    // print('Pressed');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: Align(
            //     alignment: Alignment.topRight,
            //     child: IconButton(
            //       icon: SvgPicture.asset(
            //         "assets/svg-icons/delete.svg",
            //       ),
            //       splashRadius: 12.0,
            //       padding: const EdgeInsets.all(0.0),
            //       onPressed: () {},
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  // Place order button
  Widget _placeOrderButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CheckoutAddress()),
            );
          },
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            primary: AppColorConstants.secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
          ),
          child: Text(
            "Place Order",
            style: GoogleFonts.lato(
              fontSize: 16.0,
              // color: AppColorConstants.primaryColorDark,
              // fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
