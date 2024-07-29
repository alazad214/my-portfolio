import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
        this.hinttext,
        this.line,
        this.width,
        this.controller,
        this.onchanged,
        this.validator, this.prefixicon});

  final String? hinttext;
  final int? line;
  final double? width;
  final controller;
  final onchanged;
  final validator;
  final  prefixicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, ),
      margin: const EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        controller: controller,
        validator: validator,
        style:  const TextStyle(color: Colors.white),
        maxLines: line,
        onChanged: onchanged,
        decoration: InputDecoration(
          prefixIcon: prefixicon,
          hintText: hinttext,
          prefixIconColor: Colors.white,
          hintStyle: const TextStyle(color: Colors.blueGrey, fontSize:14),
          filled: false,
          fillColor: Colors.white,
          //enable-->
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white12,
            ),
          ),

          //focus-->
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white70,
                width: 2),
          ),

          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red,
                width: 2),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white70,
                width: 2),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white70,
                width: 2),
          ),
        ),
      ),
    );
  }
}
