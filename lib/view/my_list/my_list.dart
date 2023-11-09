import 'package:flutter/material.dart';
import 'package:netflix_ui/utils/color_constant/color_constant.dart';
import 'package:netflix_ui/utils/image_constant/image_constant.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Image.asset(ImageConstant.Netflixlogo),
          title: Text(
            "My List",
            style: TextStyle(color: ColorConstant.PrimaryWhite),
          ),
        ),
        backgroundColor: Colors.black,
        body: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: MyListImages.ListImages.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 110,
                    height: 161,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(MyListImages.ListImages[index]),
                          fit: BoxFit.cover),
                    ),
                  ),
                )));
  }
}
