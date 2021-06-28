import 'package:badges/badges.dart';
import 'package:ecom_app/screens/home/home_page.dart';
import 'package:ecom_app/utils/app_color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  final String title;
  Home({Key? key, required this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  List<Widget> _widgetItems = [
    HomePage(),
    Text(
      'Index 1: Business',
      // style: optionStyle,
    ),
    Text(
      'Index 2: School',
      // style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      // style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                  color: AppColorConstants.primaryColor,
                ),
              ),
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 0.0,
              leading: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icons/my-order.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              trailing: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icons/right-arrow.svg',
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
                  'assets/svg-icons/cart.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              trailing: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icons/right-arrow.svg',
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
                  'assets/svg-icons/wishlist.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              trailing: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icons/right-arrow.svg',
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
                  'assets/svg-icons/account.svg',
                  height: 20,
                  width: 15,
                ),
              ),
              trailing: SizedBox(
                width: 20.0,
                child: SvgPicture.asset(
                  'assets/svg-icons/right-arrow.svg',
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
                  'assets/svg-icons/notification.svg',
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
                  'assets/svg-icons/note.svg',
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
                  'assets/svg-icons/about.svg',
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
                  'assets/svg-icons/location.svg',
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
                  'assets/svg-icons/help.svg',
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
                  'assets/svg-icons/power.svg',
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
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              child: SvgPicture.asset(
                'assets/svg-icons/home.svg',
                height: 20,
                width: 15,
              ),
              padding: const EdgeInsets.only(bottom: 5.0),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: SvgPicture.asset(
                'assets/svg-icons/wishlist-dark.svg',
                height: 20,
                width: 15,
              ),
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: SvgPicture.asset(
                'assets/svg-icons/menu-cate.svg',
                height: 18,
                width: 15,
              ),
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: SvgPicture.asset(
                'assets/svg-icons/account-dark.svg',
                height: 20,
                width: 15,
              ),
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: AppColorConstants.primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        unselectedItemColor: AppColorConstants.primaryColorDark,
        selectedItemColor: Colors.white,
        selectedLabelStyle: GoogleFonts.lato(fontWeight: FontWeight.w500),
        unselectedLabelStyle: GoogleFonts.lato(fontWeight: FontWeight.w500),
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: _widgetItems[_selectedIndex],
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
