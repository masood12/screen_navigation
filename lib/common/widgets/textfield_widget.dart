import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
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
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onTap: widget.onTap,
        onChanged: widget.onChange,
        obscureText: widget.obscureText ?? false,
        textInputAction: widget.textInputAction,
        keyboardType: widget.textInputType,
        style: widget.textStyle,
        maxLength: widget.maxCharacters,
        controller: widget.controller,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: widget.fillColor,
          filled: true,
          hintText: widget.hintText,
          hintStyle: widget.hintStyle,
          labelText: widget.labelText,
          labelStyle: widget.labelTextStyle,
          prefixIcon: widget.prefixIcon,
          suffix: widget.suffix,
          suffixIcon: widget.suffixIcon,
          suffixStyle: widget.suffixStyle,
          border:
              UnderlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
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
