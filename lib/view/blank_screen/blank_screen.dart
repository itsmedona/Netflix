import 'package:flutter/material.dart';
import 'package:netflix_ui/utils/color_constant/color_constant.dart';
import 'package:netflix_ui/view/home_screen/home_screen.dart';
import 'package:netflix_ui/view/my_list/my_list.dart';
import 'package:netflix_ui/view/my_movies/my_movies.dart';
import 'package:netflix_ui/view/tv_shows/tv_shows.dart';

class BlankScreen extends StatelessWidget {
  const BlankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.PrimaryBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                    )
                    ); //navigator.push
              },
               child: Text(
                "All",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.677,
                  fontWeight: FontWeight.w400
                ),
                ),
                ),

                TextButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => TvShows(),
                    )
                    ); //navigator.push
              },
               child: Text(
                "Tv Shows",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 29.68,
                  fontWeight: FontWeight.w600
                ),
                ),
                ),

                TextButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => MyMovies(),
                    )
                    ); //navigator.push
              },
               child: Text(
                "Movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.677,
                  fontWeight: FontWeight.w400
                ),
                ),
                ),

                TextButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => MyListScreen(),
                    )
                    ); //navigator.push
              },
               child: Text(
                "My List",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.677,
                  fontWeight: FontWeight.w400
                ),
                ),
                ),

                SizedBox(height: 100,),


               Container(
                
                           
                height: 69,
                width: 69,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Cross.png")),shape: BoxShape.circle,color: Colors.white),
               ),
              


          ],
          
        ),
        
      ),

);
}
}