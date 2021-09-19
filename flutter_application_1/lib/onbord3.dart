import 'package:flutter/material.dart';
import 'package:flutter_application_1/onbord4.dart';
import 'login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Onboard3 extends StatefulWidget {
  const Onboard3({ Key key }) : super(key: key);

  @override
  _Onboard3State createState() => _Onboard3State();
}

class _Onboard3State extends State<Onboard3>{
  
  @override
  Widget build(BuildContext context) { 
    return Scaffold(

            body: Home1(),          
      
    );
  }     
}





class Button0 extends StatefulWidget {
  const Button0({ Key key }) : super(key: key);

  @override
  _Button0State createState() => _Button0State();
}


class _Button0State extends State<Button0> with SingleTickerProviderStateMixin{

  
  AnimationController _controller;
  double _scale;
  Widget get _animatedButtonUi =>
  Container(
     decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0.0,3.0),
          blurRadius: 3.0
        )
      ],
      gradient: LinearGradient(
        colors: [
          Color.fromRGBO(123, 97, 255, 1),
          Color.fromRGBO(123, 97, 255, 1)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight
      )
    ),
    child: Center(child: 
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[ 
                           
                        Text("Get Started",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 16.sp
                              ),
                        
                        ),]
                    )),
  );

   @override
    void initState(){
    super.initState();
      _controller=AnimationController(
        vsync:this,
        duration: Duration(milliseconds:200),
          lowerBound: 0.0,
          upperBound: 0.1,
    )..addListener(() {
      setState(() {
        
      });
    });
  }

   void _onTapDown(TapDownDetails details){
    _controller.forward();
  }
   void _onTapUp(TapUpDetails details){
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
     _scale = 1-_controller.value;
    return Container(
      child:
        SizedBox(
width: 343.w,
                  height: 54.h,
                  child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_){
                              return Onbord4();
                             }));
                  },
                  onTapDown: _onTapDown,
                  onTapUp: _onTapUp,
                  child: Transform.scale(
                          scale: _scale,
                          child: _animatedButtonUi,
                  ),
                  ),
          ),
    );
  }
}



class Home1 extends StatefulWidget {
  const Home1({ Key key }) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
  final data=MediaQuery.of(context);
      return Scaffold(
            body: SingleChildScrollView(
                      
                                  child: Container(
                                  height: data.size.height,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:AssetImage("Images/on2.png"),
                                      fit: BoxFit.cover,
                                      
                                    )
                                  ),

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                
                                      Container(
                                        margin: EdgeInsets.only(top: 466.h),
                                        child: Text("Find The Best Service",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 24.sp,
                                            color:Colors.white,
                                            fontWeight: FontWeight.w600)
                                        ),
                                        ),
                                      
                                      Container(
                                        margin: EdgeInsets.only(top: 16.h ),
                                        padding: EdgeInsets.only(left: 30.w, right: 30.w),
                                        child: Text("There are various services from the best salons that have become our partners.",
                                         textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color:Colors.white,
                                            fontWeight:FontWeight.w400
                                            )
                                        ),
                                        ),
                                               
                                        
                                         
                                      Container(
                                        margin: EdgeInsets.only(top: 20.h),
                                        child: Button0()
                                        ),
                                     

                                     

                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:[ 
                                          Container(
                                          margin: EdgeInsets.only(top: 20.h),
                                          child: Text("Already have an account?", style:TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color:Colors.white
                                          ),
                                        ),
                                      ),

                                      InkWell(
                                        onTap: (){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                          return Login();
                                          }));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(top: 20.h),
                                          child: Text("    Sign in",
                                            style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color:Colors.orange
                                              )
                                          ),
                                        ),
                                      )
                                         ] 
                                      ),
                                    ]
                                  ),
                                
                        
                      ),
                    ),
                
             
      
    );
  }
}
      