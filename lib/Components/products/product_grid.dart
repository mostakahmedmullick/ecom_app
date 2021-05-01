import 'package:ecom_app/constants/products_constant.dart';
import 'package:flutter/material.dart';

class ProductsGrid extends StatefulWidget {
  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  List<String> images = ProductConstants.jeansImg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Card(
                  child: Text('hi'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Card(
                  child: Text('hi'),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Card(
                  child: Text('hi'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Card(
                  child: Text('hi'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
