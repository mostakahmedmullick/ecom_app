import 'package:badges/badges.dart';
import 'package:ecom_app/utils/ColorConstants.dart';
import 'package:ecom_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: ColorConstants.primaryColor,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecom',
      theme: basicTheme(),
      home: MyHomePage(title: 'Ecom'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              // ConstrainedBox(
              //   constraints: BoxConstraints(maxHeight: 50),
              //   child:
              // )
            ],
          ),
        ),
      ),
    );
  }
}
