import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/appstyle.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is My cart " ,  style: Styles.headLineStyle1 ),
      ),
    );
  }
}
