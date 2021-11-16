import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/shop_details_scrolled.dart';
//import 'homepage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopDetails extends StatefulWidget {
  const ShopDetails({ Key key }) : super(key: key);

  @override
  _ShopDetailsState createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> {
  @override
  
  Widget build(BuildContext context) {
    final data=MediaQuery.of(context);
    return Scaffold(
      body: Container(
          height: data.size.height,
          width: data.size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                    image: AssetImage("Images/serv.png"),
                    fit:BoxFit.cover
            )
          ),
    
          child: Column(
            children: [
              Container(
                width: 370.w,
                margin: EdgeInsets.only(top:45.h),
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80.w,
                      height: 80.w,
                     
                      decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                      ),
    
                      child: TextButton(
                        child: Image.asset("Images/Backicon.png"),
                        onPressed: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (_){
                              return HomePage();
                             }));
                        },
                      ),
    
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            //width: 200.w,
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 80.w,
                                  height: 80.w,
                                  decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                 ),
                                  child: TextButton(
                                          child: Image.asset("Images/Favourite.png"),
                                          onPressed: (){},
                                  ),
                            
                          ),
                            
                          Container(
                            width: 80.w,
                            height: 80.w,
                           
                            decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                            ),
                            
                            child: TextButton(
                              child: Image.asset("Images/Maps.png"),
                              onPressed: (){},
                            ),
                            
                          ),
                                          ],
                                          ),
                          ),
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 255.h, left: 12.w, right: 12.w ),
                height: 330.h,
                decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top:15.h,left: 18.w, right: data.size.width/12.w),
                          child: Text("Hair , Facial , Nails, 2+",
                                  style: TextStyle(
                                    color: Color.fromRGBO(123, 97, 255, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400
                                  ),
                                  ),
                        ),
                        Container(
                          
                          padding: EdgeInsets.only(top:15.h,left: 18.w, right: data.size.width/12.w),
                          child: TextButton(
                            onPressed: (){},
                            child: Text('OPEN', style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18.sp
                            ),)
                        ),
                        ),

                       
                      ],
                    ),

                    Container(
                      padding: EdgeInsets.only(top:15.h,left: 18.w, right: data.size.width/12.w),
                      alignment: Alignment.topLeft,
                      child: Text('Plush Beauty Lounge', style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600,
                       ),
                      ),
                    
                    ),

                    Container(
                      padding: EdgeInsets.only(bottom:15.h,left: 18.w, right: data.size.width/12.w),
                      alignment: Alignment.topLeft,
                      child: Text('360 Slillwater Rd. Palm city, Fl 34990', style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w300,
                       ),
                      ),
                    
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left:12.w) ,
                          //width:data.size.width/10,
                          child: Icon(Icons.star,
                          color: Colors.orange,
                                                ),
                        ),

                        Container(
                          width:data.size.width/4,
                          padding: EdgeInsets.only(left: 12.w),
                          child:Text("4.8  (3.1k)",
                            style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 12.w) ,
                            child: Icon(Icons.bookmark,
                            color: Color.fromRGBO(123, 97, 255, 1),
                                    ),
                            ),

                          Container(
                            child: Text('-58% (6 pax available)',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400
                            ),),
                        ),
                             ] ),

                         
                      ],
                    ),
                   Container(
                     padding: EdgeInsets.only(top: 20.h),
                     child: Button0())
                  ],
                ),
                
              ),
              Container(
                margin: EdgeInsets.only(top: 15.h),
                child: Text('View More Details', style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 2


                ),
              ),
              )
            ],


          )
    
    
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
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black,
      //     offset: Offset(0.0,3.0),
      //     blurRadius: 3.0
      //   )
      // ],
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
            child: Text("Book Now",
                    style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500
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
    final data=MediaQuery.of(context);
     _scale = 1-_controller.value;
    return Container(
      child:
        SizedBox(
                  width: data.size.width*1.6/2,
                  height: data.size.height/13,
                  child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_){
                              return ShopDetailsScrolled();
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