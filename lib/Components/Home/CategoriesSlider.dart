import 'package:ecom_app/Components/products/product_category_wise.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesSlider extends StatelessWidget {
  final List<String> imgList = [
    'assets/svg-icon/bussiness-man.svg',
    'assets/svg-icon/woman.svg',
    'assets/svg-icon/baby-boy.svg',
    'assets/svg-icon/jeans.svg',
    'assets/svg-icon/shirt.svg',
    'assets/svg-icon/cloth.svg',
    'assets/svg-icon/dress.svg',
    'assets/svg-icon/fork.svg',
    'assets/svg-icon/girl.svg',
    'assets/svg-icon/trousers.svg',
    'assets/svg-icon/socks.svg',
    'assets/svg-icon/cloth.svg',
  ];

  final List<String> cateTxt = [
    'Mens',
    'Womens',
    'Kids',
    'Jeans',
    'T-Shirts',
    'Shirts',
    'Salwar',
    'Fork',
    'Girls',
    'Trousers',
    'Socks',
    'Dress',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(0),
        itemCount: imgList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductCategoryWise()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    imgList[index],
                    width: 40,
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Center(
                      child: Text(
                        cateTxt[index],
                        style: GoogleFonts.lato(color: Color(0xFF515C6F)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
