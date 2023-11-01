import 'package:flutter/material.dart';

class ComingSoonScreenWidget extends StatelessWidget {
  final ImageProvider ComingSoonImage;
  final String title;
  const ComingSoonScreenWidget({super.key, required this.ComingSoonImage, required this.title});

  @override
  Widget build(BuildContext context) {
    
   
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
          
           decoration: BoxDecoration(
            image: DecorationImage(
              image: ComingSoonImage,
              fit: BoxFit.fill
              ),
               color: Colors.red,
               ), ///////////
          
          
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Column(
                  children: [
                    IconButton(
                      onPressed: (){},
                       icon:Image.asset(
                        "assets/images/cminsoonButton.png"
                        ),
                        color: Colors.white,
                        ),
                
                Text("Remind Me",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11.131,
                  fontWeight: FontWeight.w400
                  ),
                ),
                  ],
                ),
                SizedBox(width: 20,),
          
                 Column(
                  children: [
                    IconButton(
                      onPressed: (){},
                       icon:Image.asset(
                        "assets/images/bx_bxs-share-alt.png"
                        ),
                        color: Colors.white,
                        ),
                
                Text(
                  "Share",
                  style: TextStyle(
                    color: Colors.white,
                     fontSize: 11.131,
                  fontWeight: FontWeight.w400
                    ),
                ),
          
                 
          
                
                  ],
                ),
                SizedBox(width: 20,),
              ],
            ),
            Text(
                  "Season 1 Coming December 14",
                  style: TextStyle(color: Colors.white,fontSize: 11),
                ),
                 Text(
                  title,
                  style: TextStyle(color: Colors.white,fontSize: 18.662,fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10,),

                  Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis Massa,id ut ipsum aliquam  enim non posuere pulvinar diam",
                  style: TextStyle(color: Colors.white,fontSize: 11.141,fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10,),

                

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                    "Steamy",
                    style: TextStyle(color: Colors.white,fontSize: 11.398,fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5,),
                  CircleAvatar(
                    backgroundColor: Colors.white,radius: 3,
                    ),
                    SizedBox(width: 5,),

                    Text(
                    "Soapy",
                    style: TextStyle(color: Colors.white,fontSize: 11.398,fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5,),
                  CircleAvatar(
                    backgroundColor: Colors.white,radius: 3,
                    ),
                    SizedBox(width: 5,),

                    Text(
                    "Slow Bum",
                    style: TextStyle(color: Colors.white,fontSize: 11.398,fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5,),
                  CircleAvatar(
                    backgroundColor: Colors.white,radius: 3,
                    ),
                    SizedBox(width: 5,),


                    Text(
                    "Suspenseful",
                    style: TextStyle(color: Colors.white,fontSize: 11.398,fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5,),
                  CircleAvatar(
                    backgroundColor: Colors.white,radius: 3,
                    ),
                    SizedBox(width: 5,),

                    Text(
                    "Team",
                    style: TextStyle(color: Colors.white,fontSize: 11.398,fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5,),
                  CircleAvatar(
                    backgroundColor: Colors.white,radius: 3,
                    ),
                    SizedBox(width: 5,),

                    Text(
                    "Mystery",
                    style: TextStyle(color: Colors.white,fontSize: 11.398,fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5,),
                  CircleAvatar(
                    backgroundColor: Colors.white,radius: 3,
                    ),
                    SizedBox(width: 5,),
                    
                    ],
                  ),
                )
          ],
         
          
          
          
          
          
        ),
      ),
    );
  }
}
/*container(
  hi8:dble.infinity,
  width:dble.infinity,
  clr:blck
  child:col(
    chil[

    ]
  )
)*/