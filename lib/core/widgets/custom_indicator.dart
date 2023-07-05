import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, this.dotsIndex});
  final double? dotsIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kMainColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: kMainColor)),
      ),
      dotsCount: 3,
      position: dotsIndex!.toInt(),
    );
  }
}
