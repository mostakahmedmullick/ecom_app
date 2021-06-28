import 'package:ecom_app/screens/products/product_category_wise.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesSlider extends StatelessWidget {
  final List<String> imgList = [
    'assets/svg-icons/bussiness-man.svg',
    'assets/svg-icons/woman.svg',
    'assets/svg-icons/baby-boy.svg',
    'assets/svg-icons/jeans.svg',
    'assets/svg-icons/shirt.svg',
    'assets/svg-icons/cloth.svg',
    'assets/svg-icons/dress.svg',
    'assets/svg-icons/fork.svg',
    'assets/svg-icons/girl.svg',
    'assets/svg-icons/trousers.svg',
    'assets/svg-icons/socks.svg',
    'assets/svg-icons/cloth.svg',
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
