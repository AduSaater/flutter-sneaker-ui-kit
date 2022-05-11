import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sneakers/component/SSBestODWidget.dart';
import 'package:sneakers/model/SneakerShoppingModel.dart';
import 'package:sneakers/screen/SSDetailScreen.dart';
import 'package:sneakers/screen/SSViewAllScreen.dart';
import 'package:sneakers/utils/SSDataGenerator.dart';
import 'package:sneakers/utils/SSWidgets.dart';

import '../../../main.dart';

class SSHomeFragment extends StatefulWidget {
  @override
  State<SSHomeFragment> createState() => _SSHomeFragmentState();
}

class _SSHomeFragmentState extends State<SSHomeFragment> {
  final List<SneakerShoppingModel> list = getAllData();
  final List<SneakerShoppingModel> data = getSearchData();

  @override
  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image(
          image: AssetImage('images/sneakerShopping/ic_sneaker_logo.png'),
          height: 30,
          width: 30,
          color: appStore.isDarkModeOn ? Colors.white : Colors.black,
          fit: BoxFit.cover,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Responsive(
              web: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Image(
                    image: AssetImage('images/sneakerShopping/ic_banner1.jpg'),
                    height: 600,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    fit: BoxFit.cover),
              ),
              mobile: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Image(
                  image: AssetImage('images/sneakerShopping/ic_banner1.jpg'),
                  height: 250,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Best Products", textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: boldTextStyle()),
                  TextButton(
                    onPressed: () {
                      SSViewAllScreen().launch(context);
                    },
                    child: Text("Show all", style: secondaryTextStyle()),
                  ),
                ],
              ),
            ),
            HorizontalList(
              padding: EdgeInsets.only(left: 16, right: 16),
              itemCount: list.length,
              itemBuilder: (_, index) {
                return InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    SSDetailScreen(img: list[index].img).launch(context);
                  },
                  child: SSBestODWidget(title: list[index].name,
                      img: list[index].img,
                      subtitle: list[index].subtitle,
                      amount: list[index].amount),
                );
              },
            ),
            SizedBox(height: 16, width: 16),
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 8),
              child: Text("New Arrivals", textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: boldTextStyle()),
            ),
            Responsive(
                mobile: GridView.builder(
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
                padding: EdgeInsets.all(8),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (_, index) {
                  return arrivalWidget(context: context, img: data[index].img);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
