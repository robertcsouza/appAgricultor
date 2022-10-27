import 'package:app_agricultor/colors/paletColors.dart';
import 'package:flutter/material.dart';

Widget input(
    {TextEditingController? controller,
    String? lable,
    required bool obscure,
    context}) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: GRAY, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextField(
        obscureText: obscure,
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: lable,
            contentPadding: EdgeInsets.only(left: 20),
            hintStyle: TextStyle()),
      ),
    ),
  );
}
