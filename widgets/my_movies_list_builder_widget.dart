import 'package:flutter/material.dart';
import 'package:netflix_ui/utils/color_constant/color_constant.dart';

class MyMoviesListBuilder extends StatelessWidget {
  const MyMoviesListBuilder({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: ColorConstant.PrimaryWhite,
          ),
        ),
      ]),
    );
  }
}
