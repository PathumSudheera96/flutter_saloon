import 'package:flutter/material.dart';
import 'package:flutter_application_1/onbord2.dart';
import 'package:flutter_application_1/register.dart';
import 'login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onbord4 extends StatefulWidget {
  const Onbord4({ Key key }) : super(key: key);

  @override
  _Onbord4State createState() => _Onbord4State();
}

class _Onbord4State extends State<Onbord4>{
  
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
              body: Home4(),
             
      
    );
  }     
}


class Button1 extends StatefulWidget {
  const Button1({ Key key }) : super(key: key);

  @override
  _Button1State createState() => _Button1State();
}


class _Button1State extends State<Button1> with SingleTickerProviderStateMixin{

  
  AnimationController _controller1;
  double _scale1;

  Widget get _animatedButtonUi1 =>
  Container(
     decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      border: Border.all(
        width: 2,
        color: Colors.white
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0.0,2.0),
          blurRadius: 3.0
        )
      ],
      gradient: LinearGradient(
        colors: [
          Colors.white,
          Colors.white
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight
      )
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[

           SizedBox(
            height: 30.h,
            width: 30.w,                    
             child: Container(
               margin: EdgeInsets.only(right: 10),
                      child: Image(
                              image: AssetImage("Images/search.png")
                              )
                    ),
            ),

          Text("Join with Google",
          style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
          color: Color.fromRGBO(123, 97, 255, 1)
                ),
        ),
        ]
      )),
  );

   @override
    void initState(){
    super.initState();
      _controller1=AnimationController(
        vsync:this,
        duration: Duration(milliseconds:200),
          lowerBound: 0.0,
          upperBound: 0.1,
    )..addListener(() {
      setState(() {
        
      });
    });
  }

   void _onTapDown1(TapDownDetails details){
    _controller1.forward();
  }
   void _onTapUp1(TapUpDetails details){
    _controller1.reverse();
  }

  @override
  Widget build(BuildContext context) {
     _scale1 = 1-_controller1.value;
    return Container(
      child:
        SizedBox(
                  width: 343.w,
                  height: 54.h,
                  child: GestureDetector(
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (_){
                              return Onboard();
                             }));
                  },
                  onTapDown: _onTapDown1,
                  onTapUp: _onTapUp1,
                  child: Transform.scale(
                          scale: _scale1,
                          child: _animatedButtonUi1,
                  ),
                  ),
          ),
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
                        
                        SizedBox(
                          height: 30.sp,
                          width: 30.sp,                    
                          child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Image(
                                          image: AssetImage("Images/Icon.png")
                              )
                    ),
            ),
                        
                        Text("Join with Email",
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
                              return Register();
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



class Home4 extends StatefulWidget {
  const Home4({ Key key }) : super(key: key);

  @override
  _Home4State createState() => _Home4State();
}

class _Home4State extends State<Home4> with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
  final data=MediaQuery.of(context);
      return Scaffold(
            body: SingleChildScrollView(
                      
                                  child: Container(
                                  height: data.size.height,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:AssetImage("Images/Bg.png"),
                                      fit: BoxFit.cover,
                                      
                                    )
                                  ),

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                
                                      Container(
                                        margin: EdgeInsets.only(top: 445.h),
                                        child: Text("Let's join with us",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 24.sp,
                                            color:Colors.
                                            white,fontWeight: FontWeight.w600
                                            )
                                        ),
                                        ),
                                      
                                      Container(
                                        margin: EdgeInsets.only(top: 16.h ),
                                        padding: EdgeInsets.only(left: 30.w, right: 30.w),
                                        child: Text("Find and book Beauty, Salon, Barber and Spa services anywhere, anytime.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color:Colors.white,
                                            fontWeight:FontWeight.w400
                                            )
                                        ),
                                        ),
                                      
                                      Button1(),
                                      
                                        
                                      Button0(),

                                     

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
                                          child: Text("   Sign in",
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
      