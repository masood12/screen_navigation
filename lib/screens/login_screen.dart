import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:screen_navigation/common/widgets/button_widget.dart';
import 'package:screen_navigation/common/widgets/textfield_widget.dart';
import 'package:screen_navigation/core/utils/colors.dart';
import 'package:screen_navigation/core/utils/textStyle.dart';
import 'package:screen_navigation/core/utils/sizes.dart';
import 'package:screen_navigation/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
  _buildBody(BuildContext context){
    return Container(

      decoration:  BoxDecoration(
        image: DecorationImage(
          image:const AssetImage("assets/images/bg_01.jpeg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.darken),
        ),
      ),
      child: BackdropFilter(
        filter:  ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 18.flexibleWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormFieldWidget(
                hcontentPadding: 0,
                fillColor: UIColors.white,
                labelTextStyle: StyleText.regularDarkGray18,
                textStyle: StyleText.boldDarkGrey16,
                hintText: "Name",
                hintStyle: StyleText.hintStyle,
                controller: TextEditingController(),
              ),
              16.verticalSpace,
              TextFormFieldWidget(
                hcontentPadding: 0,
                fillColor: UIColors.white,
                labelTextStyle: StyleText.regularDarkGray18,
                textStyle: StyleText.boldDarkGrey16,
                hintText: "Password",
                hintStyle: StyleText.hintStyle,
                obscureText: true,
                controller: TextEditingController(),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                _buildForgetButton()
              ],),

              10.verticalSpace,
              _buildLoginButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForgetButton() {
    return Padding(
        padding: EdgeInsets.only(
          top: 10.flexibleHeight,
        ),
        child: TextButton(
            onPressed: () {},
            child: Text(
              'Passwort vergessen?',
              style: StyleText.mediumWhite15,
            )));
  }

  Widget _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: 200.flexibleWidth,
      height: 45.flexibleHeight,
      child: ButtonWidget(
        btnText: 'ANMELDEN',
        elevation: 5,
        btnColor: UIColors.btnColor,
        textStyle: StyleText.boldWhite18,
        borderRadius: BorderRadius.circular(50.0),
        showImageInBtn: false,
        btnClick: () {
           Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        },
      ),
    );
  }

}
