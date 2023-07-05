// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruits_attempt/core/utils/size_config.dart';
import 'package:fruits_attempt/core/widgets/custom_button.dart';
import 'package:fruits_attempt/features/OnBoarding/presentation/widgets/space_widget.dart';

import '../../../../../../core/widgets/constants.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(10),
        SizedBox(
          child: Image.asset(kLogo),
          height: SizeConfig.defaultSize! * 17,
        ),
        Text(
          "Fruit Market",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 51,
              color: kMainColor,
              fontWeight: FontWeight.w700),
        ),
        Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  color: Color(0xFFdb3236),
                  text: "Log in with G",
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  color: Color(0xFFdb3236),
                  text: "Log in with F",
                ),
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
