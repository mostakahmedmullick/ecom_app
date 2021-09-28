import 'package:ecom_app/utils/app_color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutAddress extends StatefulWidget {
  const CheckoutAddress({Key? key}) : super(key: key);

  @override
  _CheckoutAddressState createState() => _CheckoutAddressState();
}

class _CheckoutAddressState extends State<CheckoutAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Delivery Address",
          style: GoogleFonts.lato(),
        ),
        elevation: 0.0,
        bottomOpacity: 0.0,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 6.0,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 6.0,
                ),
                child: _addNewAddressButton(),
              ),
              SizedBox(
                height: 8.0,
              ),
              // list of addresses
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 6.0,
                  ),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(0.0),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return _addressCardDesign();
                    },
                  ),
                ),
              ),
              // Order Summery button
              _orderSummeryButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _addNewAddressButton() {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => CheckoutAddress()),
          // );
        },
        icon: Icon(
          Icons.add,
          size: 18,
          color: AppColorConstants.secondaryColor,
        ),
        label: Text(
          "Add New Address",
          style: GoogleFonts.lato(
            fontSize: 14.0,
            color: AppColorConstants.secondaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: OutlinedButton.styleFrom(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          side: BorderSide(
            color: AppColorConstants.secondaryColor,
          ),
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
        ),
      ),
    );
  }

  Widget _addressCardDesign() {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 0.0,
        vertical: 4.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
        ),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Address Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Address Title
                    Text(
                      "Home Address / Business Address",
                      style: GoogleFonts.lato(
                        color: AppColorConstants.primaryColor,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    // Address Person Name
                    Text(
                      "Mostak Ahmed Mullick",
                      style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    // Address 1
                    Text(
                      "Mullick Bagan, Gabberia",
                      style: GoogleFonts.lato(
                        color: AppColorConstants.greyFontColor,
                      ),
                    ),
                    // Address 2
                    Text(
                      "Panchla, Howrah, 711322",
                      style: GoogleFonts.lato(
                        color: AppColorConstants.greyFontColor,
                      ),
                    ),
                    // state country
                    Text(
                      "West Bengal, India",
                      style: GoogleFonts.lato(
                        color: AppColorConstants.greyFontColor,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    // mobile
                    Text(
                      "+91 9830098300",
                      style: GoogleFonts.lato(
                        color: AppColorConstants.greyFontColor,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    // edit button
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Edit",
                        style: GoogleFonts.lato(
                          fontSize: 15.0,
                          color: AppColorConstants.secondaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // delete button
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
        ),
      ),
    );
  }

  // Order Summery button
  Widget _orderSummeryButton() {
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
            "Order Summery",
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
