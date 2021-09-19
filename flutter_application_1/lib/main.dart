import 'package:flutter/material.dart';
import 'package:flutter_application_1/onbord2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login.dart';

void main() {
  runApp(MySalonApp());
}

class MySalonApp extends StatefulWidget {
  const MySalonApp({ Key key }) : super(key: key);

  @override
  _MySalonAppState createState() => _MySalonAppState();
}

class _MySalonAppState extends State<MySalonApp>{
  
  @override
  Widget build(BuildContext context) { 
    return ScreenUtilInit(
      builder: () => MaterialApp(
                title: "salons.lk",
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                         fontFamily: 'Poppins',
                  ),
                home: Home()     
               
        
      ),
      designSize: const Size(375, 812),
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
                            
                        Text("Next",
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
                              return Onboard();
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



class Home extends StatefulWidget {
  const Home({ Key key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
  final data=MediaQuery.of(context);
      return Scaffold(
            body: SingleChildScrollView(
                      
                                  child: Container(
                                  height: data.size.height,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:AssetImage("Images/on1.png"),
                                      fit: BoxFit.cover,
                                      
                                    )
                                  ),

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                
                                      Container(
                                        margin: EdgeInsets.only(top: 466.h),
                                        child: Text("Best Stylist For You",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 24.sp,
                                            color:Colors.white,
                                            fontWeight: FontWeight.w600)
                                        ),
                                        ),
                                      
                                      Container(
                                        margin: EdgeInsets.only(top: 16.h ),
                                        padding: EdgeInsets.only(left: 60.w, right: 60.w),
                                        child: Text("Styling your appearance according to your lifestyle.",
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
                                          margin: EdgeInsets.only(top: 20.h, left: 80.w),
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
                                          margin: EdgeInsets.only(top: 20.h,right: 80.w),
                                          child: Text("  Sign in",
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
      