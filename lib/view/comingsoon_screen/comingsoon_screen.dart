import 'package:flutter/material.dart';
import 'package:netflix_ui/view/new_arrival_screen/new_arrival_screen.dart';
import 'package:netflix_ui/view/widgets/comingsoon_widget.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: Row(
          children: [
            Container(
              height: 19,
              width: 19,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Ellipse 6.png"))),
              child: Image.asset("assets/images/bi_bell-fill.png"),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "notifications",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.906,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(
                height: 0,
              ),
              NewArrivalScreen(
                title: "New Arrival",
                subtitle: "El Chapo",
                date: "Nov 6",
                image: AssetImage("assets/images/notification1.png"),
              ),
              NewArrivalScreen(
                  image: AssetImage("assets/images/notification2.png"),
                  title: "New Arrival",
                  subtitle: "Peaky Blinders",
                  date: "Nov 6"),
              SizedBox(
                height: 20,
              ),
              ComingSoonScreenWidget(
                title: "Castle & Castle",
                ComingSoonImage: AssetImage("assets/images/Castle&castle.png"),
              ),
              ComingSoonScreenWidget(
                title: "Pretty Things",
                ComingSoonImage: AssetImage("assets/images/Pretty Things.png"),
              ),
              ComingSoonScreenWidget(
                title: "Faster",
                ComingSoonImage: AssetImage("assets/images/Faster.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
