import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pemesananapp/config/config.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {Key? key,
        this.buttonType = SecondaryButtonType.type3,
        required this.onPressed,
        required this.text,
        this.width = 78})
      : super(key: key);
  final SecondaryButtonType buttonType;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return buttonType == SecondaryButtonType.type1
        ? _type1()
        : buttonType == SecondaryButtonType.type2
        ? _type2()
        : _type3();
  }

  Widget _type1() {
    return SizedBox(
      width: width.w,
      height: 24.h,
      child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            backgroundColor: ThemeColor.inkWhite,
              side: const BorderSide(color: ThemeColor.inkBlack),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )),
          child: Text(
            text,
            style: ThemeFont.buttonSmall,
          )),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width.w,
      height: 32.h,
      child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
              backgroundColor: ThemeColor.inkWhite,
              side: const BorderSide(color: ThemeColor.inkBlack),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )),
          child: Text(
            text,
            style: ThemeFont.buttonMedium.copyWith(fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width.w,
      height: 57.h,
      child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
              backgroundColor: ThemeColor.inkWhite,
              side: const BorderSide(color: ThemeColor.inkBlack),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )),
          child: Text(
            text,
            style: ThemeFont.buttonLarge,
          )),
    );
  }
}

enum SecondaryButtonType {
  type1,
  type2,
  type3,
}
