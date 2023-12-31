import 'package:flutter/material.dart';
import 'package:netflix_ui/utils/color_constant/color_constant.dart';
import 'package:netflix_ui/utils/image_constant/image_constant.dart';
import 'package:netflix_ui/view/search_screen/search_screen.dart';
import 'package:netflix_ui/view/widgets/my_movies_list_builder.dart';

class MyMovies extends StatefulWidget {
  const MyMovies({super.key});

  @override
  State<MyMovies> createState() => _MyMoviesState();
}

class _MyMoviesState extends State<MyMovies> {
  int selectedIndex = 0;

  List<Widget> widgetList = [];

  @override
  Widget build(BuildContext context) {
    TextStyle toptab = TextStyle(
        color: ColorConstant.PrimaryWhite,
        fontSize: 17,
        fontWeight: FontWeight.w500);
    return Scaffold(
      backgroundColor: ColorConstant.PrimaryBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 415,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(ImageConstant.Popular1),
                          fit: BoxFit.cover),
                          ),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 53,
                              height: 57,
                              child: Image.asset(ImageConstant.Netflixlogo),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Movies",
                                    style: toptab,
                                  ),
                                  Text(
                                    "All Genres",
                                    style: toptab,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Text(
                          "#2 in Nigeria Today",
                          style: TextStyle(color: ColorConstant.PrimaryWhite),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 415,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    ColorConstant.PrimaryBlack.withOpacity(.4),
                    ColorConstant.PrimaryBlack.withOpacity(.1)
                  ])),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                width: 249,
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Image.asset(ImageConstant.Plus),
                        ),
                        Text(
                          "MyList",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: ColorConstant.PrimaryWhite),
                        )
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 111,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.625),
                          color: ColorConstant.PrimaryWhite),
                      child: SizedBox(
                        width: 72,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 18,
                              height: 22,
                              child: Image.asset(ImageConstant.Play),
                            ),
                            SizedBox(
                              // width: 39,
                              //  height: 30,
                              child: Text(
                                "Play",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ), 
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Image.asset(ImageConstant.Report),
                        ),
                        Text(
                          "Info",
                          style: TextStyle(
                              color: ColorConstant.PrimaryWhite,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            MyMoviesListBuilder(
              title: "Previews",
              shape: BoxShape.circle,
              ImageList: ImageList.Prev,
            ),
            MyMoviesListBuilder(
              title: "Continue watching Shows",
              shape: BoxShape.rectangle,
              ImageList: ImageList.Continue,
            ),
            MyMoviesListBuilder(
              title: "Popular Shows",
              shape: BoxShape.rectangle,
              ImageList: ImageList.Popular,
            ),
            MyMoviesListBuilder(
              title: "Trending Now",
              shape: BoxShape.rectangle,
              ImageList: ImageList.Trending,
            ),
            MyMoviesListBuilder(
              title: "Top10 Nigeria",
              shape: BoxShape.rectangle,
              ImageList: ImageList.Top10Nigeria,
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchScreen(),
                      ));
                },
                child: Text("Press Here"))
          ],
        ),
      ),
    );
  }
}
