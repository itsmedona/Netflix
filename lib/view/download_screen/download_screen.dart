import 'package:flutter/material.dart';
import 'package:netflix_ui/utils/color_constant/color_constant.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.PrimaryBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 36),
            child: Text(
              "Smart Downloads",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "Introducing Downloads For You",
            style: TextStyle(
                color: Colors.white,
                fontSize: 19.634,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 12.32,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.781,
                  fontWeight: FontWeight.w400,
                  height: 2.5),
            ),
          ),
          SizedBox(
            height: 9.09,
          ),
          Center(
            child: Container(
              width: 177,
              height: 177,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff424242),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              color: Colors.blue,
              width: 353,
              height: 40.891,
              child: Center(
                child: Text(
                  "SETUP",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.859,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 55,
          ),
          Center(
            child: Container(
              height: 33,
              width: 239,
              color: Color(0xff424242),
              child: Center(
                child: Text(
                  "Find Something to Download",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.708,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
