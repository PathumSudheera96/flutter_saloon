import 'package:flutter/material.dart';
import 'package:flutter_application_1/shop_details.dart';
import 'package:flutter_application_1/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomepageBody extends StatelessWidget {
  const HomepageBody({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data=MediaQuery.of(context);
    return SingleChildScrollView(
      
          child: Container(
            width: data.size.width,
            decoration:BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [

                Container(
                  padding: EdgeInsets.only(left: data.size.width/30,right:data.size.width/30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: data.size.width*1.3/2,
                          padding: EdgeInsets.only(top:data.size.height/20,),
                          child:
                          Text("Hello Pathum",style: HeadingStyle),
                        ),
                        Container(
                         width: data.size.width*1.6/2,
                         alignment: Alignment.topLeft,
                         //margin: EdgeInsets.only(left: data.size.width/20,right: data.size.width/20),
                         child: Text("Find the service you want, and treat yourself", style: TextStyle(
                           fontSize: 13,
                         ),),
                    ),
                  
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top:30),
                          height: data.size.height/8,
                          width: data.size.width/8,
                          child: FloatingActionButton(
                            child: Icon(Icons.search),
                            backgroundColor: Color.fromRGBO(123, 97, 255, 1),
                            onPressed: (){},),
                        )
                      ],
                    )
                    ] 
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: data.size.height/30,right: data.size.width/40,left: data.size.width/40),
                            height: data.size.height/5.4,
                            width: data.size.width/1.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight:Radius.circular(10)),
                              image: DecorationImage(image:AssetImage("Images/Card.png"),fit: BoxFit.contain)
                            ),
                          ),
                       Container(
                         margin: EdgeInsets.only(top: data.size.height/30,right: data.size.width/40,left: data.size.width/40),
                            height: data.size.height/5.4,
                            width: data.size.width/1.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight:Radius.circular(10)),
                              image: DecorationImage(image:AssetImage("Images/Card.png"),fit: BoxFit.contain)
                            ),
                          ),
                    ],
                  ),
                ),

                 Container(
                  margin: EdgeInsets.only(top:24.h),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left:data.size.width/30),
                  child:Text("What do you want to do", style: SubHeadingStyle,)
                ),

                Container(
                  padding: EdgeInsets.only(left: 16.w,right: 16.w,top: 24.h,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 8.h),
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(225, 245, 255, 1)
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.h,
                                  child: Image.asset("Images/hair.png"),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(bottom: 16.h),
                                child: Text("Haircut",style: TextStyle(
                                  color: Color.fromRGBO(123, 97, 255, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp
                                  ),),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 8.h),
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(225, 245, 255, 1)
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.h,
                                  child: Image.asset("Images/nail.png"),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(bottom: 16.h),
                                child: Text("Nails",style: TextStyle(
                                  color: Color.fromRGBO(123, 97, 255, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp
                                  ),),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 8.h),
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(225, 245, 255, 1)
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.h,
                                  child: Image.asset("Images/facial.png"),
                                ),
                              ),

                              Container(
                                 margin: EdgeInsets.only(bottom: 16.h),
                                child: Text("Facial",style: TextStyle(
                                  color: Color.fromRGBO(123, 97, 255, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp
                                  ),),
                              )
                            ],
                          ),

                        Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 8.h),
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(225, 245, 255, 1)
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.h,
                                  child: Image.asset("Images/hair.png"),
                                ),
                              ),

                              Container(
                                 margin: EdgeInsets.only(bottom: 16.h),
                                child: Text("Haircut",style: TextStyle(
                                  color: Color.fromRGBO(123, 97, 255, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp
                                  ),),
                              )
                            ],
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 8.h),
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(225, 245, 255, 1)
                                ),
                                child: Container(
                                  height: 40.w,
                                  width: 40.w,
                                  child: Image.asset("Images/spa.png"),
                                ),
                              ),

                              Container(
                                 margin: EdgeInsets.only(bottom: 16.h),
                                child: Text("Spa",style: TextStyle(
                                  color: Color.fromRGBO(123, 97, 255, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp
                                  ),),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 8.h),
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(225, 245, 255, 1)
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.h,
                                  child: Image.asset("Images/waxing.png"),
                                ),
                              ),

                              Container(
                                 margin: EdgeInsets.only(bottom: 16.h),
                                child: Text("Waxing",style: TextStyle(
                                  color: Color.fromRGBO(123, 97, 255, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp
                                  ),),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 8.h),
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(225, 245, 255, 1)
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.h,
                                  child: Image.asset("Images/makeup.png"),
                                ),
                              ),

                              Container(
                                 margin: EdgeInsets.only(bottom: 16.h),
                                child: Text("Makeup",style: TextStyle(
                                  color: Color.fromRGBO(123, 97, 255, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp
                                  ),),
                              )
                            ],
                          ),

                        Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 8.h),
                                height: 64.w,
                                width: 64.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(225, 245, 255, 1)
                                ),
                                child: Container(
                                  height: 40.h,
                                  width: 40.h,
                                  child: Image.asset("Images/massage.png"),
                                ),
                              ),

                              Container(
                                 margin: EdgeInsets.only(bottom: 16.h),
                                child: Text("Message",style: TextStyle(
                                  color: Color.fromRGBO(123, 97, 255, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp
                                  ),),
                              )
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(top:24.h,bottom: 24.h),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left:data.size.width/30),
                  child:Text("Salon you follow", style: SubHeadingStyle,)
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                          child:Padding(
                                  padding: EdgeInsets.only(left:16.w),
                                  child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                         Container(
                            child: Container(
                              height: 72.h,
                              width: 72.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(21, 103, 120, 1),
                                  width: 3.0.w,
                                ),
                                borderRadius: BorderRadius.circular(100),
                                color:Color.fromRGBO(139, 8, 134, 1),
                                image: DecorationImage(image: AssetImage("Images/445187a.png"))
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(8.w, 0, 0, 0),
                            child: Container(
                              height: 72.h,
                              width: 72.h,
                              decoration: BoxDecoration(
                                 border: Border.all(
                                  color: Color.fromRGBO(21, 103, 120, 1),
                                  width: 3.0,  
                                ),
                                borderRadius: BorderRadius.circular(100),
                                color:Color.fromRGBO(139, 8, 134, 1),
                                image: DecorationImage(
                                        image: AssetImage("Images/sal.jpg"),
                                        fit: BoxFit.cover
                                      )
                              ),
                            ),
                          ),


                         Container(
                            margin: EdgeInsets.fromLTRB(8.w, 0, 0, 0),
                            child: Container(
                              height: 72.h,
                              width: 72.h,
                              decoration: BoxDecoration(
                                 border: Border.all(
                                  color: Color.fromRGBO(21, 103, 120, 1),
                                  width: 3.0,  
                                ),
                                borderRadius: BorderRadius.circular(100),
                                color:Color.fromRGBO(139, 8, 134, 1),
                                image: DecorationImage(
                                        image: AssetImage("Images/sal.jpg"),
                                        fit: BoxFit.cover
                                      )
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(8.w, 0, 0, 0),
                            child: Container(
                              height: 72.h,
                              width: 72.h,
                              decoration: BoxDecoration(
                                 border: Border.all(
                                  color: Color.fromRGBO(21, 103, 120, 1),
                                  width: 3.0,  
                                ),
                                borderRadius: BorderRadius.circular(100),
                                color:Color.fromRGBO(139, 8, 134, 1),
                                image: DecorationImage(
                                        image: AssetImage("Images/sa1.jpg"),
                                        fit: BoxFit.cover
                                      )
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(8.w, 0, 0, 0),
                            child: Container(
                              height: 72.h,
                              width: 72.h,
                              decoration: BoxDecoration(
                                 border: Border.all(
                                  color: Color.fromRGBO(21, 103, 120, 1),
                                  width: 3.0,  
                                ),
                                borderRadius: BorderRadius.circular(100),
                                color:Color.fromRGBO(139, 8, 134, 1),
                                image: DecorationImage(
                                        image: AssetImage("Images/sa1.jpg"),
                                        fit: BoxFit.cover
                                      )
                              ),
                            ),
                          ),

                         Container(
                            margin: EdgeInsets.fromLTRB(8.w, 0, 0, 0),
                            child: Container(
                              height: 72.h,
                              width: 72.h,
                              decoration: BoxDecoration(
                                 border: Border.all(
                                  color: Color.fromRGBO(21, 103, 120, 1),
                                  width: 3.0,  
                                ),
                                borderRadius: BorderRadius.circular(100),
                                color:Color.fromRGBO(139, 8, 134, 1),
                                image: DecorationImage(
                                        image: AssetImage("Images/sal.jpg"),
                                        fit: BoxFit.cover
                                      )
                              ),
                            ),
                          ),

                        ]
                      ),
                    ),
                    
                  ),
                ),
                  
                  Container(
                    padding: EdgeInsets.only(top:16.h,left:16.w),
                    alignment: Alignment.topLeft,
                    child:Text("Featured Salon",
                      style:SubHeadingStyle
                  ),
                ),


                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:24.h,left: 16.w, right: 16.w),
                        width:250.w,
                        height: 348.h,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),

                        child: Column(

                          children: [

                          
                            Container(
                              height: 194.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.sp),
                                color: Color.fromRGBO(255, 200, 254, 1),
                                image: DecorationImage(image:AssetImage("Images/sa1.jpg"),fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Container(
                                          padding: EdgeInsets.only(left:12.w, top: 12.h),
                                          child: Text("Hair, Nails, Facial",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(123, 97, 255, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.sp
                                                    ),
                                                  ),
                                          ),

                                      Container(
                                        padding: EdgeInsets.only(left:12.w),
                                        child:Text("Salon de Elegance",
                                          style:TextStyle(
                                           fontFamily: 'Poppins',  
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w600,
                                      ),),
                                      ),
                                      
                                      Container(
                                        padding: EdgeInsets.only(left:12.w),
                                        child:Text("360 Stillwater Rd, Palm City",
                                          style:TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                      ),),
                                      ),

                                       

                                      
                                    ],
                                  ),
                                  
                                ] 
                                ),
                            ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left:12.w,top: 19.h),
                                    width:50.w,
                                    child: Icon(Icons.star,
                                    color: Colors.orange,
                                            ),
                                  ),
                                           
                                  Container(                                        
                                    padding: EdgeInsets.only(right:12.w,top: 20.h),
                                    child:Text("4.8  (3.1k)",
                                            style:TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.bold,
                                                   ),
                                            ),
                                  ),
                              ],
                            ),

                          ],), 
                      ),

                      Container(
                        margin: EdgeInsets.only(top:24.h,left: 16.w, right: 16.w),
                        width:250.w,
                        height: 348.h,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),

                        child: Column(

                          children: [

                          
                            Container(
                              height: 194.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.sp),
                                color: Color.fromRGBO(255, 200, 254, 1),
                                image: DecorationImage(image:AssetImage("Images/sa1.jpg"),fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Container(
                                          padding: EdgeInsets.only(left:12.w, top: 12.h),
                                          child: Text("Hair, Nails, Facial",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(123, 97, 255, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.sp
                                                    ),
                                                  ),
                                          ),

                                      Container(
                                        padding: EdgeInsets.only(left:12.w),
                                        child:Text("Salon de Elegance",
                                          style:TextStyle(
                                           fontFamily: 'Poppins',  
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w600,
                                      ),),
                                      ),
                                      
                                      Container(
                                        padding: EdgeInsets.only(left:12.w),
                                        child:Text("360 Stillwater Rd, Palm City",
                                          style:TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                      ),),
                                      ),

                                       

                                      
                                    ],
                                  ),
                                  
                                ] 
                                ),
                            ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left:12.w,top: 19.h),
                                    width:50.w,
                                    child: Icon(Icons.star,
                                    color: Colors.orange,
                                            ),
                                  ),
                                           
                                  Container(                                        
                                    padding: EdgeInsets.only(right:12.w,top: 20.h),
                                    child:Text("4.8  (3.1k)",
                                            style:TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.bold,
                                                   ),
                                            ),
                                  ),
                              ],
                            ),

                          ],), 
                      ),

                      Container(
                        margin: EdgeInsets.only(top:24.h,left: 16.w, right: 16.w),
                        width:250.w,
                        height: 348.h,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),

                        child: Column(

                          children: [

                          
                            Container(
                              height: 194.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.sp),
                                color: Color.fromRGBO(255, 200, 254, 1),
                                image: DecorationImage(image:AssetImage("Images/sa1.jpg"),fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Container(
                                          padding: EdgeInsets.only(left:12.w, top: 12.h),
                                          child: Text("Hair, Nails, Facial",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(123, 97, 255, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.sp
                                                    ),
                                                  ),
                                          ),

                                      Container(
                                        padding: EdgeInsets.only(left:12.w),
                                        child:Text("Salon de Elegance",
                                          style:TextStyle(
                                           fontFamily: 'Poppins',  
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w600,
                                      ),),
                                      ),
                                      
                                      Container(
                                        padding: EdgeInsets.only(left:12.w),
                                        child:Text("360 Stillwater Rd, Palm City",
                                          style:TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                      ),),
                                      ),

                                       

                                      
                                    ],
                                  ),
                                  
                                ] 
                                ),
                            ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left:12.w,top: 19.h),
                                    width:50.w,
                                    child: Icon(Icons.star,
                                    color: Colors.orange,
                                            ),
                                  ),
                                           
                                  Container(                                        
                                    padding: EdgeInsets.only(right:12.w,top: 20.h),
                                    child:Text("4.8  (3.1k)",
                                            style:TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.bold,
                                                   ),
                                            ),
                                  ),
                              ],
                            ),

                          ],), 
                      ),
                    ],
                  ),
                ),

                 
                 
                  Container(
                    padding: EdgeInsets.only(top:24.h,left:16.h,bottom:24.h),
                    alignment: Alignment.topLeft,
                    child:Text("Most interest Searches",
                      style:SubHeadingStyle
                  ),
                ),



                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 16.w, right: 16.w),
                        margin: EdgeInsets.only(left: 16.w),
                        height: 68.sp,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(225, 245, 250, 1),
                          borderRadius: BorderRadius.circular(50.sp),
                        ),
                        child: Row( 
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 12.w, right: 12.w),
                              child: Image.asset("Images/hair.png"),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: data.size.width/40, right: data.size.width/20),
                              child: Text("Haircut",style: TextStyle(
                                color:Color.fromRGBO(123, 97, 255, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                 ),),
                            ),
                            
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16.w, right: 16.w),
                        margin: EdgeInsets.only(left: 16.w),
                        height: 68.sp,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(225, 245, 250, 1),
                          borderRadius: BorderRadius.circular(50.sp),
                        ),
                        child: Row( 
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 12.w, right: 12.w),
                              child: Image.asset("Images/facial.png"),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: data.size.width/40, right: data.size.width/20),
                              child: Text("Facial",style: TextStyle(
                                color:Color.fromRGBO(123, 97, 255, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                 ),),
                            ),
                            
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 16.w, right: 16.w),
                        margin: EdgeInsets.only(left: 16.w),
                        height: 68.sp,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(225, 245, 250, 1),
                          borderRadius: BorderRadius.circular(50.sp),
                        ),
                        child: Row( 
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 12.w, right: 12.w),
                              child: Image.asset("Images/nail.png"),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: data.size.width/40, right: data.size.width/20),
                              child: Text("Nail",style: TextStyle(
                                color:Color.fromRGBO(123, 97, 255, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                 ),),
                            ),
                            
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),


                 Container(
                    padding: EdgeInsets.only(top:24.h,left:16.h,bottom: 16.h),
                    alignment: Alignment.topLeft,
                    child:Text("Nearby offers",
                      style:SubHeadingStyle
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                         onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                              return ShopDetails();
                                              }));
                                },
                        child: Container(
                          margin: EdgeInsets.only(left: 16.w, right: data.size.height/50/2,bottom: data.size.height/30),
                          width:data.size.width,
                      
                          height: data.size.height/5,
                      
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0.0,2.0),
                            blurRadius: 3.0
                          )
                        ],
                          ),
                      
                          child: Row(
                            children: [
                             Container(
                                  width: data.size.width/3,
                                  height: data.size.height/5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                                    image: DecorationImage(image: AssetImage("Images/sa1.jpg"),
                                            fit:BoxFit.cover
                                            )
                                  ),
                                ),
                             
                              Row(
                                children: [
                                  Container(
                                    child: Column(
                                      
                                            children:[
                                      
                                  
                                  Container(
                                    height: data.size.height/3-data.size.height/5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                              Container(
                                                padding: EdgeInsets.only(left:data.size.width/30),
                                                child: Text("Hair, Nails, Facial",
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(123, 97, 255, 1),
                                                          fontWeight: FontWeight.w500,
                                                          ),
                                                        ),
                                                ),
                      
                                              
                                              Container(
                                                padding: EdgeInsets.only(left:data.size.width/30),
                                                width:data.size.width/1.4-25,
                                                child:Text("Salon de Elegance",
                                                  style:TextStyle(
                                                   fontFamily: 'Poppins',  
                                                  color: Colors.black,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600,
                                              ),),
                                              ),
                                            
                                               Container(
                                                padding: EdgeInsets.only(left:data.size.width/30),
                                                width:data.size.width/1.4-25,
                                                child:Text("360 Stillwater Rd, Palm City",
                                                  style:TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                              ),),
                                              ),
                                            
                      
                                             
                      
                                            
                                          ],
                                        ),
                                        
                                      ] 
                                      ),
                                  ),
                      
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          padding: EdgeInsets.only(left:data.size.width/30) ,
                                          width:data.size.width/10,                                           
                                          child: Icon(Icons.star,
                                                  color: Colors.orange,
                                          ),
                                        ),
                                        Container(
                                          width:data.size.width/2.8-25,
                                          padding: EdgeInsets.only(right:data.size.width/30),
                                          child:Text("4.8  (3.1k)",
                                                  style:TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  ),
                                                  ),
                                        ),
                                      ],
                                    ),
                      
                            ],), 
                                  ),
                                ],
                              )
                            ],
                          )
                        ),
                      ),



                      Container(
                        margin: EdgeInsets.only(top:data.size.height/30,left: data.size.height/50/2, right: data.size.height/50/2,bottom: data.size.height/30),
                        width:data.size.width/1.4-25,
                        height: data.size.height/5,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.0,2.0),
                          blurRadius: 3.0
                        )
                      ],
                        ),

                        child: Column(

                          children: [
                            Container(
                              height: data.size.height/8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight:Radius.circular(10)),
                                color: Color.fromRGBO(255, 200, 254, 1),
                                image: DecorationImage(image:AssetImage("Images/sa1.jpg"),fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              height: data.size.height/5-data.size.height/8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left:data.size.width/30),
                                        width: data.size.width/2.2,
                                        child:Text("Salon Name",
                                          style:TextStyle(
                                             fontFamily: 'Poppins',
                                          color: Color.fromRGBO(139, 8, 134, 1),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                      ),),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left:data.size.width/18),
                                        width: data.size.width/2.2,
                                        child:Text("Location",
                                          style:TextStyle(
                                          color: Color.fromRGBO(139, 8, 134, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                      ),),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: data.size.height/22,
                                    width: data.size.height/22,
                                    child: Container(
                                       margin: EdgeInsets.only(top:data.size.height/22/3),
                                      child: Text("4.4",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(139, 8, 134, 1),
                                        fontWeight: FontWeight.bold
                                ),
                                    textAlign: TextAlign.center,
                                )
                              ),
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(244, 189, 222, 1)
                                  )
                                ),
                                ] 
                                ),
                            ),
                          ],),
                      ),
                    ],
                  ),
                ),
                  

              ],
            ),
          ),
        ); 
  }
}