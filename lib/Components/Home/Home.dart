import 'package:badges/badges.dart';
import 'package:ecom_app/Components/Home/CategoriesSlider.dart';
import 'package:ecom_app/Components/Home/HomeTopSlider.dart';
import 'package:ecom_app/Components/products/product_grid.dart';
import 'package:ecom_app/utils/ColorConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text(
          widget.title,
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
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 150,
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mostak Ahmed Mullick',
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 18.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'mostak.ahmed@gmail.com',
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 16.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '+91 7278656936',
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 16.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: ColorConstants.primaryColor,
                ),
              ),
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0.0,
              leading: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/my-order.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              trailing: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/right-arrow.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              title: Text(
                'My Orders',
                style: GoogleFonts.lato(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0.0,
              leading: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/cart.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              trailing: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/right-arrow.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              title: Text(
                'My Carts',
                style: GoogleFonts.lato(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0.0,
              leading: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/wishlist.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              trailing: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/right-arrow.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              title: Text(
                'My Wishlist',
                style: GoogleFonts.lato(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0.0,
              leading: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/account.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              trailing: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/right-arrow.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              title: Text(
                'Accounts',
                style: GoogleFonts.lato(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0.0,
              leading: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/notification.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              title: Text(
                'Notifications',
                style: GoogleFonts.lato(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0.0,
              leading: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/note.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              title: Text(
                'Legal Information',
                style: GoogleFonts.lato(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0.0,
              leading: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/about.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              title: Text(
                'About Us',
                style: GoogleFonts.lato(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0.0,
              leading: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/location.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              title: Text(
                'Contact Us',
                style: GoogleFonts.lato(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0.0,
              leading: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/help.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              title: Text(
                "FAQ's",
                style: GoogleFonts.lato(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0.0,
              leading: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icon/power.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              title: Text(
                "Logout",
                style: GoogleFonts.lato(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: ColorConstants.primaryColor),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: SizedBox(
                  child: TextField(
                    // onChanged: onTextChange,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: Icon(Icons.search),
                      hintText: 'Search for Product..',
                      hintStyle: GoogleFonts.lato(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                    ),
                  ),
                ),
              ),
              HomeTopSlider(),
              CategoriesSlider(),
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                          ),
                          color: ColorConstants.secondaryColor,
                        ),
                        child: Text(
                          'Jeans Collections',
                          style: GoogleFonts.lato(
                              color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: () {
                            print('hiii');
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "View More  ",
                                  style: GoogleFonts.lato(
                                      color: ColorConstants.primaryColor),
                                ),
                                WidgetSpan(
                                  child: SvgPicture.asset(
                                    'assets/svg-icon/right-arrow.svg',
                                    width: 12,
                                    height: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ProductsGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

// class MyCustomContainer extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = new Path();
//     path.lineTo(100, size.height - 200);
//     path.lineTo(size.width, size.height - 150);
//     path.lineTo(size.width, 0.0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
