import 'package:flutter/material.dart';
import 'package:ui_project/screen/place_screen.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}


class _home_pageState extends State<home_page> {

  var height,width;
  List IconImages = [
    "assets/images/flight.png",
    "assets/images/condo.png",
    "assets/images/plate.png",
    "assets/images/front-of-bus.png",
    "assets/images/flight.png",
    "assets/images/condo.png",
    "assets/images/plate.png",
    "assets/images/front-of-bus.png",
  ];
  List imgs =[
    "aeroplane.jpg",
    "girltravel.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: height*0.035,),
              SizedBox(height: height*0.097,
              width: width*0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Explore",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize:width*0.059,
                            color: Colors.black,
                              letterSpacing: 3
                          )
                      ),
                      Text("Explore your world beauty",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize:width*0.039,
                              color: Colors.black,
                              letterSpacing: 1
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.35,),
                  Container(
                    height: height*0.052,
                    width: width*0.11,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/girl.jpg")
                      )
                    ),
                  )
                ],
              ),),
              SizedBox(height: height*0.030,),
             Container(
               height: height*0.073,
               width: width*0.9,
               decoration: BoxDecoration(
                 color: Colors.blue.shade100,
                 borderRadius: BorderRadius.circular(13),
               ),
               child: Center(
                 child: Padding(
                   padding: EdgeInsets.only(left:width*0.03),
                   child: TextFormField(
                     style: TextStyle(
                       color: Colors.white,
                     ),
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: "Search here...",
                       hintStyle: TextStyle(
                         color: Colors.black38,
                         fontSize: width*0.04,
                         letterSpacing: 2
                       ),
                       prefixIcon: Icon(Icons.search,
                       size: width*0.09,
                         color: Colors.black26,
                       )
                     ),
                   ),
                 ),
               ),
             ),
              SizedBox(height: height*0.035,),

              SizedBox(
                height: height*0.08,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: IconImages.length,
                    itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        height: height*0.068,
                        width: width*0.14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Image(
                            height: height*0.04,
                            color: Colors.white,
                            image: AssetImage(IconImages[index]),
                          ),
                        ),
                      ),
                    ),
                  );
                } ),

              ),
              SizedBox(height: height*0.035,),
            SizedBox(
              width: width*0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All",style: TextStyle(
                      color: Colors.black87,
                      fontSize: width*0.04,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1
                  ),),
                  Text("New",style: TextStyle(
                    color: Colors.black87,
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1
                  ),),
                  Text("Tour",style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1
                  ),),
                  Text("Aisa",style: TextStyle(
                    color: Colors.black87,
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1
                  ),),
                  Text("Advanture",style: TextStyle(
                    color: Colors.black87,
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1
                  ),),
                ],
              ),
            ),
             SizedBox(height: height*0.035,),
              SizedBox(
                height: height*0.44,
                width: width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: imgs.length,
                    itemBuilder: (context,index){
                  return Padding(padding: EdgeInsets.symmetric(
                    horizontal: height*0.03,
                    vertical: width*0.01,
                  ),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>place_screen()));
                        },
                        child: Container(
                          width: width*0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/${imgs[index]}")
                            )
                          ),
                          child: Stack(
                            children: [
                              Align(alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: height*0.14,
                                width: width*0.47,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("HilTon Taran",style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: width*0.043,
                                      color: Colors.white,
                                      letterSpacing: 1
                                    ),),
                                    Text("Lodon",style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: width*0.033,
                                        color: Colors.white,
                                        letterSpacing: 2
                                    ),),
                                    Image.asset("assets/images/rating.png",
                                    width: width*0.3,
                                      height: height*0.030,
                                      fit: BoxFit.cover,

                                    )
                                  ],
                                ),
                              ),
                              ),
                              SizedBox(width: width*0.05,),
                            ],
                          ),
                        ),
                      ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.lightBlueAccent,
       // iconSize: 30,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text("")),
        ],
       ),
    )
    );
  }
}
