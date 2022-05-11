import 'package:flutter/material.dart';
import 'package:sneakers/screen/PurchaseMoreScreen.dart';


class AddToCartBottomSheet extends StatefulWidget {
  @override
  AddToCartBottomSheetState createState() => AddToCartBottomSheetState();
}

class AddToCartBottomSheetState extends State<AddToCartBottomSheet> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return PurchaseMoreScreen();
  }
}
