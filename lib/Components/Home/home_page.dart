import 'package:ecom_app/Components/Home/CategoriesSlider.dart';
import 'package:ecom_app/Components/Home/HomeTopSlider.dart';
import 'package:ecom_app/Components/Home/cashback_slider.dart';
import 'package:ecom_app/Components/products/product_grid.dart';
import 'package:ecom_app/Components/products/product_grid_new.dart';
import 'package:ecom_app/utils/ColorConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          // Jeans Collections Row
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
                      color: ColorConstants.primaryColor,
                    ),
                    child: Text(
                      'Jeans Collections',
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 16.0),
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
                                  color: ColorConstants.primaryColorDark),
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
          SizedBox(
            height: 10.0,
          ),
          CashBackSlider(),
          SizedBox(
            height: 10.0,
          ),
          // Salwar Collections Row
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
                      color: ColorConstants.primaryColor,
                    ),
                    child: Text(
                      'Salwar Collections',
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 16.0),
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
                                  color: ColorConstants.primaryColorDark),
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
          ProductsGridNew(),
        ],
      ),
    );
  }
}
