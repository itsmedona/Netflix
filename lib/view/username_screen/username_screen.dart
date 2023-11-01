import 'package:flutter/material.dart';
import 'package:netflix_ui/utils/color_constant/color_constant.dart';
import 'package:netflix_ui/view/navigation_screen/navigation_screen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List myImageList = [
      "assets/images/Rectangle 2.png",
      "assets/images/Rectangle 3.png",
      "assets/images/Rectangle 4.png",
      "assets/images/Rectangle 5.png",
      "assets/images/Group 1.png"
    ];
    return Scaffold(
      backgroundColor: ColorConstant.PrimaryBlack,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => NavScreen()),
                    (route) => false);
              },
              icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  "assets/images/bx_bxs-pencil.png",
                  color: Colors.white,
                ),
              )),
          SizedBox(
            width: 25,
          )
        ],
        backgroundColor: ColorConstant.PrimaryBlack,
        elevation: 0,
        toolbarHeight: 120,
        centerTitle: true,
        title: SizedBox(
          height: 38,
          width: 138,
          child: Image.asset(
              "assets/images/logos_netflix.png"), //here all kind of imgs will go
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: myImageList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) => Container(
            color: Color.fromARGB(255, 6, 6, 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  myImageList[index],
                  height: 121,
                  width: 100,
                ),
                Text(
                  "Shows",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
