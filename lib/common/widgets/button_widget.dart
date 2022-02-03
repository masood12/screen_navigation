import 'package:flutter/material.dart';
import 'package:screen_navigation/core/utils/colors.dart';
import 'package:screen_navigation/core/utils/sizes.dart';

class ButtonWidget extends StatelessWidget {
  final String? btnText;
  final EdgeInsetsGeometry? padding;
  final Function()? btnClick;
  final BorderRadiusGeometry? borderRadius;
  final double? elevation;
  final TextStyle? textStyle;
  final Color? btnColor;
  final Color? borderColor;
  final bool? showImageInBtn;

  ButtonWidget(
      {this.btnText,
      this.btnClick,
      this.elevation,
      this.textStyle,
      this.borderRadius,
      this.padding,
      this.btnColor = Colors.lightBlueAccent,
      this.borderColor = UIColors.primaryColor,
      this.showImageInBtn = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: padding,
          elevation: elevation ?? 0,
          primary: btnColor,
          // background
          onPrimary: UIColors.grayOne,
          // foreground
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(0),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          showImageInBtn!
              ? Icon(
                  Icons.qr_code,
                  size: 63.flexibleWidth,
                  color: Colors.black54,
                )
              : Container(),
          // 39.horizontalSpace,
          Text(
            btnText ?? "",
            style: textStyle,
          ),
        ],
      ),
      onPressed: btnClick!,
    );
  }
}
