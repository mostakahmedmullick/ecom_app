import 'package:badges/badges.dart';
import 'package:ecom_app/screens/cart/my_cart.dart';
import 'package:ecom_app/utils/app_color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBarWidget {
  static AppBar myAppBarWidget(String title, BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.lato(),
      ),
      elevation: 0.0,
      bottomOpacity: 0.0,
      backgroundColor: AppColorConstants.primaryColor,
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
            splashRadius: 24.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyCart()),
              );
            },
          ),
        ),
      ],
    );
  }
}
