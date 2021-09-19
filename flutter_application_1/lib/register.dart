import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Register extends StatelessWidget {
  const Register({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data=MediaQuery.of(context);
    //TextEditingController title= TextEditingController();
    return Scaffold(

        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.only(
              bottom:10.h
            ),
            height: data.size.height,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   
                    Container( 
                      margin: EdgeInsets.only(top:88.h,left: 16.w),
                      child: Text("Create an account",
                              style: HeadingStyle
                                )
                            ),
                  ],
                ),
              
          
                Container(
                     margin: EdgeInsets.fromLTRB(16.w,8.h,16.w,0),
                          child: Text("Please type full information bellow and we can create your account.",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400
                          ),),
                        ),
               Container(
                 margin: EdgeInsets.only(top:38.sp, left: 16.sp, right: 16.sp),
                 padding: EdgeInsets.only(left:24.sp, right: 24.sp),
                 height: 54.h,
                 width: 343.w, 
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   border: Border.all(
                     color: Colors.grey.shade300,
                     width: 2.sp
                   ),
                   color: Colors.grey.shade300,),
                 child: Padding(
                   padding: const EdgeInsets.all(0),
                   child: TextField(
                            //controller: 
                            //title,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_rounded),
                              border: InputBorder.none,
                              hintText: "Your name",
                            ),
                          ),
               ),
               ),

               Container(
                 margin: EdgeInsets.only(top:16.sp, left: 16.sp, right: 16.sp),
                 padding: EdgeInsets.only(left:24.sp, right: 24.sp),
                 height: 54.h,
                 width: 343.w, 
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   border: Border.all(
                     color: Colors.grey.shade300,
                     width: 2.sp
                   ),
                   color: Colors.grey.shade300,),
                 child: Padding(
                   padding: const EdgeInsets.all(0),
                   child: TextField(
                            //controller: 
                            //title,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              border: InputBorder.none,
                              hintText: "Email address",
                            ),
                          ),
               ),
               ),

               Container(
                 margin: EdgeInsets.only(top:16.sp, left: 16.sp, right: 16.sp),
                 padding: EdgeInsets.only(left:24.sp, right: 24.sp),
                 height: 54.h,
                 width: 343.w, 
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   border: Border.all(
                     color: Colors.grey.shade300,
                     width: 2.sp
                   ),
                   color: Colors.grey.shade300,),
                 child: Padding(
                   padding: const EdgeInsets.all(0),
                   child: TextField(
                            //controller: 
                            //title,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              border: InputBorder.none,
                              hintText: "Password",
                            ),
                          ),
               ),
               ),

               Container(
                 margin: EdgeInsets.only(top:16.sp, left: 16.sp, right: 16.sp),
                 padding: EdgeInsets.only(left:24.sp, right: 24.sp),
                 height: 54.h,
                 width: 343.w, 
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   border: Border.all(
                     color: Colors.grey.shade300,
                     width: 2.sp
                   ),
                   color: Colors.grey.shade300,),
                 child: Padding(
                   padding: const EdgeInsets.all(0),
                   child: TextField(
                            //controller: 
                            //title,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              border: InputBorder.none,
                              hintText: "Confirm password",
                            ),
                          ),
               ),
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(value: true, onChanged: null,
                      focusColor: Colors.pinkAccent,
                    ),
                    Container(
                          child: Text("I accept terms & conditions",
                          style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                          ) ,
                          ),
                    )
                  
                  ],
                ),

              Button0(),
              

              Container(
                margin: EdgeInsets.only(top: 5),
                child:
                Text("Or",
                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                          ) ,
                )
              ),            



              Button1(),


              Center(
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[ 
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Text("Already have an account?", 
                            style:TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color:Colors.black
                                  ),
                                ),
                          ),

                                        InkWell(
                                          onTap: (){
                                            Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                            return Login();
                                            }));
                                          },
                                          child: Text("Sign up",
                                            style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color:Color.fromRGBO(123, 97, 255, 1)
                                              )
                                          ),
                                        )
                                           ] 
                                        ),
              ),


              ]
            ),
          
      ),
        ),
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
        width: 2.sp,
        color: Colors.white 
        //color: Color.fromRGBO(123, 97, 255, 1)
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
    child: Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[ 
                        
                        SizedBox(
                          height: 30.sp,
                          width: 30.sp,                    
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
                              color: Color.fromRGBO(123, 97, 255, 1),
                              fontSize: 16.sp
                              ),
                        
                        ),]
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
                  height:54.sp,
                  child: GestureDetector(
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (_){
                              return Login();
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
    child: Center(
            child: Text("Register",
                    style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            ),
    
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
                              return HomePage();
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