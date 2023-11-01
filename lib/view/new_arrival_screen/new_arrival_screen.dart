import 'package:flutter/material.dart';

class NewArrivalScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final ImageProvider image;
  const NewArrivalScreen(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.date,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Color.fromARGB(255, 84, 74, 74),
      child: Row(
        children: [
          Container(
            height: 55,
            width: 115,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: image, /////////////////////////////////
                  fit: BoxFit.fill),
              color: Colors.amber,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title, //title
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.72,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                subtitle, //subtitle
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.72,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                date,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
