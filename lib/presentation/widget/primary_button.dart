import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pemesananapp/config/config.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      this.buttonType = PrimaryButtonType.type3,
      required this.onPressed,
      required this.text,
      this.width = 78})
      : super(key: key);
  final PrimaryButtonType buttonType;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return buttonType == PrimaryButtonType.type1
        ? _type1()
        : buttonType == PrimaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      width: width.w,
      height: 24.h,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: ThemeColor.inkBlack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )),
          child: Text(
            text,
            style: ThemeFont.buttonSmall.copyWith(color: ThemeColor.inkWhite),
          )),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width.w,
      height: 32.h,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: ThemeColor.inkBlack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )),
          child: Text(
            text,
            style: ThemeFont.buttonMedium.copyWith(color: ThemeColor.inkWhite),
          )),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width.w,
      height: 57.h,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: ThemeColor.inkBlack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )),
          child: Text(
            text,
            style: ThemeFont.buttonLarge.copyWith(color: ThemeColor.inkWhite),
          )),
    );
  }
}

enum PrimaryButtonType {
  type1,
  type2,
  type3,
}
