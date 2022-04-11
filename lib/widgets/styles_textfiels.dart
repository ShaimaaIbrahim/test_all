import 'package:flutter/material.dart';

class StyledTextField extends StatelessWidget {
  final keyboardType;
  final isPassword;
  final hint;
  final controller;
  final validator;
  final textAlign;
  final Color? fillColor;
  final double height;
  // final double? borderRadius;
  final double? borderPadding;
  final Widget? suffixWidget;
  final Function? onIconPressed;
  final Function? onChange;
  final hintStyle;
  final int? maxLines;
  final bool? editable;
  final BorderRadius? borderRadius;
  final double? width;

  StyledTextField({
    required this.height,
    this.width,
    this.hintStyle,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.hint,
    this.validator,
    this.onChange,
    this.borderPadding,
    this.textAlign = TextAlign.start,
    this.fillColor,
    this.borderRadius,
    this.suffixWidget,
    this.onIconPressed,
    this.maxLines,
    this.editable = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextFormField(
        textAlign: textAlign,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword?? false,
       // style: textFieldTextStyle,
        onChanged: (value) {
          if(value.length >100){

          }
        },
        maxLines: maxLines?? 4,
        decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: hint,
          enabled: editable!,
          filled: true,
          fillColor: Colors.white,
          hintStyle: hintStyle,
          border: OutlineInputBorder(
            borderRadius: borderRadius==null ? BorderRadius.circular(20): borderRadius!,
            borderSide: const BorderSide(
              width: 1,
              color: Colors.lightGreen,
            ),
          ),
        ),
        validator: validator,
      ),
    );
  }
}




