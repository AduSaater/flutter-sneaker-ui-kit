import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sneakers/screen/SSPaymentScreen.dart';
import 'package:sneakers/utils/SSWidgets.dart';

class SSBillingAddressScreen extends StatefulWidget {
  @override
  State<SSBillingAddressScreen> createState() => _SSBillingAddressScreenState();
}

class _SSBillingAddressScreenState extends State<SSBillingAddressScreen> {
  bool mIsCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Checkout", style: boldTextStyle()),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: context.iconColor, size: 20),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(Icons.location_on, color: Color(0xff808080), size: 24),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Icon(Icons.credit_card, color: Color(0xff808080), size: 24),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color(0x1f000000),
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Icon(Icons.verified, color: Color(0xff808080), size: 24),
              ],
            ),
//            PurchaseMoreScreen().withHeight(context.height() * 0.7)
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: sSAppButton(
          context: context,
          title: 'Continue to payment',
          onPressed: () {
            SSPaymentScreen().launch(context);
          },
        ),
      ),
    );
  }
}
