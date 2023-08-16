import 'package:flutter/material.dart';

import 'home_apge.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  var width, height;
  @override
  Widget build(BuildContext context) {
    height =MediaQuery.of(context).size.height;
    width =MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(

        children: [
          Container(
            height: height,
            width: width,
            child: Image.asset("assets/images/splash.jpg",fit: BoxFit.cover,),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: height*0.32,
              width: width,
              child: Column(
                children: [
                  Text("Lests Start Journey,Enjoy",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ) ,),
                  SizedBox(height: height*0.03,),
                  Text("Beautiful Movement of life",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ) ,),
                  SizedBox(
                    height: height*0.04,

                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>home_page()));
                    },
                    child: Container(
                      height: height*0.065,
                      width: width *0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      color: Colors.white
                      ),
                      child: Center(
                        child: Text("Start",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            letterSpacing: 2
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.05),
                  Text("Dont't have account?",
                  style: TextStyle(
                    fontSize: width*0.04,
                        fontWeight: FontWeight.w400,
                    color:Colors.white,
                      letterSpacing: 2
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
