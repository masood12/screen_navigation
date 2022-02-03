import 'package:flutter/material.dart';
import 'package:screen_navigation/core/utils/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final TextStyle? textStyle;
  final TextStyle? labelTextStyle;
  final String? labelText;
  final double? labelFontSize;
  final Color? labelColor;
  final double? trbr;
  final double? tlbr;
  final double? brbr;
  final double? blbr;
  final TextEditingController? controller;

  // final Function(String?)? onSaved; ////
  final bool? obscureText;
  final TextInputType? textInputType;
  final Color? fillColor;
  final Color? borderColor;
  final double? vcontentPadding;
  final double? hcontentPadding;
  final String? hintText;
  final TextStyle? hintStyle;
  final double? trfbr;
  final double? tlfbr;
  final double? brfbr;
  final double? blfbr;
  final Color? fborderColor;
  final int? maxLine;
  final int? minLine;
  final Widget? prefixIcon;
  final int? maxCharacters;
  final Function(String)? onChange;
  final bool? readOnly;
  final Function()? onTap;
  final Widget? suffix;
  final TextStyle? suffixStyle;
  final Widget? suffixIcon;
  final BorderRadius? eBorderRadius;
  final BorderRadius? fBorderRadius;

  TextFormFieldWidget({
    this.validator,
    this.suffix,
    this.suffixStyle,
    this.textInputAction,
    this.textStyle,
    this.labelText,
    this.labelFontSize,
    this.labelColor,
    this.trbr,
    this.tlbr,
    this.brbr,
    this.blbr,
    this.controller,
    // this.onSaved,
    this.obscureText,
    this.textInputType,
    this.fillColor,
    this.borderColor,
    this.vcontentPadding,
    this.hcontentPadding,
    this.hintText,
    this.hintStyle,
    this.fborderColor,
    this.trfbr,
    this.tlfbr,
    this.brfbr,
    this.blfbr,
    this.maxLine,
    this.minLine,
    this.prefixIcon,
    this.labelTextStyle,
    this.onChange,
    this.maxCharacters,
    this.readOnly,
    this.onTap,
    this.suffixIcon,
    this.eBorderRadius,
    this.fBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      onChanged: onChange,
      obscureText: obscureText ?? false,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      style: textStyle,
      maxLength: maxCharacters,
        controller: controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: fillColor,
        filled: true,
        hintText: hintText,
        hintStyle: hintStyle,
        labelText: labelText,
        labelStyle: labelTextStyle,
        prefixIcon: prefixIcon,
        suffix: suffix,
        suffixIcon: suffixIcon,
        suffixStyle: suffixStyle,
        border: UnderlineInputBorder(
        borderRadius:BorderRadius.circular(8.0)
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.white),
        ),
      // onSaved: onSaved,
      ));
  }
}
