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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
