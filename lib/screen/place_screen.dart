import 'package:flutter/material.dart';

class place_screen extends StatefulWidget {
  const place_screen({Key? key}) : super(key: key);

  @override
  State<place_screen> createState() => _place_screenState();
}

class _place_screenState extends State<place_screen> {
  var height,width;
  @override
  Widget build(BuildContext context) {
    height =MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          child: Column(
            children: [
              Container(
                height: height*0.57,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(35),
                      bottomLeft: Radius.circular(35),
                  ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.jpg"),
                      fit: BoxFit.cover
                    )
                ),
                child: Stack(
                  children: [
                    Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.15),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(35),
                           bottomLeft: Radius.circular(35),
                        )
                      ),
                    ),
                    // SizedBox(
                    //   height: ,
                    // ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: height*0.1,
                        width: width*0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: height*0.051,
                                width: width*0.1,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),
                                child: Icon(Icons.arrow_back_ios,color: Colors.lightBlue,size: width*0.05,),
                              ),
                            ),
                            Container(
                              height: height*0.051,
                              width: width*0.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Icon(Icons.search,color: Colors.lightBlue,size: width*0.05,),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height:  height*0.23,
                        width: width*0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("The Montcalm At",
                              style: TextStyle(
                              fontSize: width*0.066,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                                color: Colors.white
                            ),),
                            Text("Brewery London City",
                              style: TextStyle(
                                  fontSize: width*0.066,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2,
                                  color: Colors.white
                              ),),
                            SizedBox(
                              height: height*0.02,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: height*0.03,
                                ),
                                Icon(Icons.location_on,
                                size: width*0.07,
                                  color: Colors.blue,
                                ),
                                Text("London",
                                  style: TextStyle(
                                      fontSize: width*0.038,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 3,
                                      color: Colors.white
                                  ),),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(left: width*0.05),
                              child: Image.asset("assets/images/rating.png",
                                width: width*0.3,
                                height: height*0.030,
                                fit: BoxFit.cover,

                              ),

                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(25),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.bookmark_border,
                          color: Colors.white,
                          size: width*0.08,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Expanded(child: SizedBox(
                width: width*0.9,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and "
                      " typesetting industry. Lorem Ipsum has been the industry's "
                      "standard dummy text ever since the 1500s,",

                  style: TextStyle(fontWeight: FontWeight.w300,fontSize: 17,),textAlign: TextAlign.justify,

                ),
              )),
             Padding(padding: EdgeInsets.only(left: width*0.05),
             child: Row(
               children: [
                 Image.asset("assets/images/clock.png",
                   height: height*0.032,),
                 SizedBox(width: width*0.02,),
                 Text("8AM - 9PM",
                 style: TextStyle(
                   fontWeight: FontWeight.w700,
                  fontSize: width*0.038
                 ),)
               ],
             ),

             ),
              SizedBox(
                height: height*0.01,
              ),
              Padding(padding: EdgeInsets.only(left: width*0.05),
              child: Row(
                children: [
                  Image.asset("assets/images/calendar.png",
                    height: height*0.032,),
                  SizedBox(width: width*0.02,),
                  Text("Friday - Tuesday",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: width*0.038
                    ),),
                ],
              ),
              ),
              SizedBox(
                height: height*0.01,
              ),
              Padding(padding: EdgeInsets.only(left: width*0.05),
                child: Row(
                  children: [
                    Image.asset("assets/images/flight (1).png",
                      height: height*0.032,),
                    SizedBox(width: width*0.02,),
                    Text("Ticket 2 way",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: width*0.038
                      ),),
                  ],
                ),
              ),
              SizedBox(
                height: height*0.01,
              ),
              SizedBox(
                height: height*0.15,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Container(
                       height: height*0.07,
                       width: width*0.33,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         border: Border.all(color: Colors.blueAccent)
                       ),
                       child: Center(
                         child: Text("\$9,50.00",
                           style: TextStyle(
                               fontSize: width*0.038,
                               fontWeight: FontWeight.w500,
                               letterSpacing: 3,
                               color: Colors.blueAccent
                           ),),
                       ),
                     ),

                    Container(
                      height: height*0.1,
                      width: width*0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Book",
                            style: TextStyle(
                                fontSize: width*0.05,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 3,
                                color: Colors.white
                            ),),
                      Image.asset("assets/images/send.png",height: height*0.03,),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
