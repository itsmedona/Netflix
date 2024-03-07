import 'package:flutter/material.dart';
import 'package:netflix_ui/view/comingsoon_screen/comingsoon_screen.dart';
import 'package:netflix_ui/view/download_screen/download_screen.dart';
import 'package:netflix_ui/view/home_screen/home_screen.dart';
import 'package:netflix_ui/view/more_screen/more_screen.dart';
import 'package:netflix_ui/view/search_screen/search_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 0;
  List<Widget> MyWidgetList = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidgetList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 70, 64, 64),
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.playlist_add), label: "ComingSoon"),
            BottomNavigationBarItem(icon: Icon(Icons.download_sharp), label: "DOwnload"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
          ]),
    );
  }
}
