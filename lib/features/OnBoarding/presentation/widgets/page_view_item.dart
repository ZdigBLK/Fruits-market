import 'package:flutter/material.dart';
import 'package:fruits_attempt/core/utils/size_config.dart';

import 'space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.subTitle, this.image});

  final String? title;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(18),
        SizedBox(
          height: SizeConfig.defaultSize! * 20,
          child: Image.asset(image!),
        ),
        const VerticalSpace(2.5),
        Text(
          title!,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20,
              color: const Color(0xff2F2E41),
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1),
        Text(
          // "Explore top organic fruits & grab them",
          subTitle!,
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 15,
            color: Color(0xFF78787C),
          ),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
