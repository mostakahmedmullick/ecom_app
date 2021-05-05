import 'package:badges/badges.dart';
import 'package:ecom_app/utils/ColorConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List<String> _filterList = [
    'Brand',
    'Product Rating',
    'Price',
    'Pack Size',
    'Discount'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/svg-icon/close.svg',
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
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: ListView.builder(
                        itemCount: _filterList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            // trailing: Text(
                            //   "GFG",
                            //   style: TextStyle(color: Colors.green, fontSize: 15),
                            // ),
                            title: Text(_filterList[index]),
                            onTap: () {},
                          );
                        },
                      ),
                    ),
                    Center(
                      child: Text('Button Ok'),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text('test'),
            ),
          ],
        ),
      ),
    );
  }
}
