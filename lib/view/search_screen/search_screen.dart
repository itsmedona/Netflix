import 'package:flutter/material.dart';
import 'package:netflix_ui/utils/color_constant/color_constant.dart';
import 'package:netflix_ui/utils/image_constant/image_constant.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.PrimaryBlack,
      body: Padding(
        padding: const EdgeInsets.only(top: 44),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 51, 49, 49),
                ),
                width: 375,
                height: 52,
                child: Row(
                  children: [
                    Image.asset(
                      Search.SearchScreenIcon,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Search your favourite Shows',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Image.asset(Search.SearchScreenMic,
                        alignment: Alignment.topRight),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Top Searches",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Column(
                children: //the error "cant be assigned tolist<widget> coz of the[] n listview builder" itll neer use[]
                    List.generate(
                        TopSearches.topSearcheslist.length,
                        (index) => Container(
                              height: 76,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 76,
                                    width: 146,
                                    child: Image.asset(TopSearches
                                        .topSearcheslist[index]["path"]),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 19),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            TopSearches.topSearcheslist[index]
                                                ["name"],
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Image.asset(
                                            Search.CircularPlayButton,
                                          ) //for play button to all
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
