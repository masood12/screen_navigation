import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:screen_navigation/common/widgets/app_drawer.dart';
import 'package:screen_navigation/core/utils/colors.dart';
import 'package:screen_navigation/core/utils/sizes.dart';
import 'package:screen_navigation/core/utils/textStyle.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home-screen";

  HomeScreen({Key? key}) : super(key: key);
  var height = AppBar().preferredSize.height;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

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
          colorFilter:
              ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.darken),
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
                    onTap: (){
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
                    style:
                        StyleText.regularDarkGray15.copyWith(fontSize: 28.fontSize,fontWeight: FontWeight.w300,color: Colors.white),
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

                decoration:  BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.0.flexibleWidth,vertical: 8.flexibleHeight),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CachedNetworkImage(imageUrl: "https://png.pngitem.com/pimgs/s/178-1780522_png-file-rainy-weather-icon-png-white-weather.png",
                          width: 75.flexibleWidth,
                            height: 75.flexibleHeight,
                          ),
                          5.horizontalSpace,
                           Text("13" + "º",
                              style:StyleText.mediumDarkGray30.copyWith(fontSize: 45.fontSize))
                        ],
                      ),
                      15.verticalSpace,
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _buildInnerBoxView("https://www.pinclipart.com/picdir/middle/372-3726154_delivery-clipart-cargo-truck-cargo-van-icon-png.png","Touren"),
                            15.horizontalSpace,
                            _buildInnerBoxView("https://png.pngitem.com/pimgs/s/178-1780522_png-file-rainy-weather-icon-png-white-weather.png","Pfadruckfabe")
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
  _buildInnerBoxView(String img,String text){
    return  Expanded(child: Container(

      decoration: BoxDecoration(
          color: UIColors.grayTwo,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(imageUrl: "https://png.pngitem.com/pimgs/s/178-1780522_png-file-rainy-weather-icon-png-white-weather.png",
            width: 45.flexibleWidth,
            height: 45.flexibleHeight,
          ),
          5.verticalSpace,
          Text(text,style: StyleText.mediumDarkGray17,)
        ],
      ),
    ));
  }
}
