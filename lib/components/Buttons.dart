import 'package:app_agricultor/colors/paletColors.dart';
import 'package:flutter/material.dart';

Widget btPrimary({context, required String lable, call, TextStyle? textStyle}) {
  return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: call,
        child: Text(
          lable,
          style: textStyle != null ? textStyle : TextStyle(),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )),
            backgroundColor: MaterialStateProperty.all<Color>(PRIMARY)),
      ));
}

Widget btSecondary(
    {context, required String lable, call, TextStyle? textStyle}) {
  return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: call,
        child: Text(
          lable,
          style: textStyle != null ? textStyle : TextStyle(color: PRIMARY),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: DARK))),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
      ));
}

Widget btText({context, required String lable, call, TextStyle? textStyle}) {
  return TextButton(
      onPressed: call,
      child: Text(
        lable,
        style: textStyle != null ? textStyle : TextStyle(),
      ));
}
