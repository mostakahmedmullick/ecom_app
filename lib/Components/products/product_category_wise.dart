import 'package:badges/badges.dart';
import 'package:ecom_app/utils/ColorConstants.dart';
import 'package:flutter/material.dart';
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
      body: Column(
        children: [
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
                      print('hii');
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
                      setState(() {
                        _visible = true;
                      });
                      
                    },
                  ),
                ),
              ],
            ),
          ),
          // DraggableScrollableSheet(builder: (context, scrollController) {
          //   return SingleChildScrollView(
          //     controller: scrollController,
          //     child: SvgPicture.asset(
          //       'assets/svg-icon/sort-by.svg',
          //       width: 20,
          //       height: 15,
          //     ),
          //   );
          // }),
          Visibility(
            maintainState: true,
            maintainAnimation: true,
            visible: _visible,
            child: SlidingUpPanel(
              isDraggable: true,
              controller: _pc1,
              panel: Center(
                child: Text('Center'),
              ),
              collapsed: Container(
                decoration:
                    BoxDecoration(color: Colors.blueGrey, borderRadius: radius),
                child: Center(
                  child: Text(
                    "Panel 1",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),
              body: Center(
                  child: Text(
                      "Panel 1 This is the Widget behind the sliding panel")),
              borderRadius: radius,
            ),
          )
        ],
      ),
    );
  }
}
