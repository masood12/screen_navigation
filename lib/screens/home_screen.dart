import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:screen_navigation/common/widgets/app_drawer.dart';
import 'package:screen_navigation/core/utils/colors.dart';
import 'package:screen_navigation/core/utils/sizes.dart';
import 'package:screen_navigation/core/utils/textStyle.dart';
import 'package:screen_navigation/screens/product_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home-screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var height = AppBar().preferredSize.height;

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  // Create a key
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const AppDrawer(),
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage("assets/images/bg_01.jpeg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.4), BlendMode.overlay),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.flexibleWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              height.verticalSpace,
              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      _key.currentState!.openDrawer();
                    },
                    child: const Icon(
                      Icons.menu,
                      size: 25,
                      color: Colors.white,
                    ),
                  )),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Simply",
                    style: StyleText.regularDarkGray15.copyWith(
                        fontSize: 28.fontSize,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  Text(
                    "Pick",
                    style: StyleText.boldWhite30,
                  )
                ],
              ),
              30.verticalSpace,
              Container(
                height: 250.flexibleHeight,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.0.flexibleWidth,
                      vertical: 8.flexibleHeight),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/clear_sky.png",
                            width: 68.flexibleWidth,
                            height: 68.flexibleHeight,
                          ),
                          5.horizontalSpace,
                          Text("13" + "??",
                              style: StyleText.mediumDarkGray30
                                  .copyWith(fontSize: 45.fontSize))
                        ],
                      ),
                      15.verticalSpace,
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _buildInnerBoxView(
                                "assets/images/delivery_van.png", "Touren"),
                            15.horizontalSpace,
                            _buildInnerBoxView(
                                "assets/images/milk_bottle.png", "Pfadruckfabe")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildInnerBoxView(String img, String text) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductScreen.routeName, arguments: text);
      },
      child: Container(
        decoration: BoxDecoration(
            color: UIColors.grayTwo, borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              width: 45.flexibleWidth,
              height: 45.flexibleHeight,
            ),
            2.verticalSpace,
            Text(
              text,
              style: StyleText.mediumDarkGray17,
            )
          ],
        ),
      ),
    ));
  }
}
