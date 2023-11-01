
import 'package:flutter/material.dart';

class MyMoviesListBuilder extends StatelessWidget {
  const MyMoviesListBuilder({super.key,
   required this.title, 
   this.shape=BoxShape.rectangle,
     this.height=200, 
    this.width=100, 
    required this.ImageList, 
    


   }
   );
  final String title;//title as per the user type chyan vndi define chyh vkyaaan
  final BoxShape shape;
  final double height;
  final double width;
  final List<String>ImageList;
 

  @override
  Widget build(BuildContext context) {
    return Container(
     
      padding: EdgeInsets.only(top: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
           style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Colors.white,
      
           ),
            
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: height,
                child: Row(
                      
                  children: //no need or[] for lis.generate
                  List.generate(
                    ImageList.length,
                    
                  
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(ImageList[index]),fit:BoxFit.cover),
                          shape: shape,
                          color: Colors.amber,
                        ),
                        
                        height: height,
                        width: 100,
                      ),
                    ),
                      ),
                  
                )
              ),
            ),
          )
          ],
        
),
);
}
}