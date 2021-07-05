import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/product_images.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key key, @required this.product}) : super(key: key);
  final Product product;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ProductImages(product: widget.product);
  }
}