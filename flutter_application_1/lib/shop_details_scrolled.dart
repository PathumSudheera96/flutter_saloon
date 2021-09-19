import 'package:flutter/material.dart';
//import 'package:flutter_application_1/login.dart';  
import 'package:flutter_application_1/shop_details.dart';

class ShopDetailsScrolled extends StatefulWidget {
  const ShopDetailsScrolled({ Key key }) : super(key: key);

  @override
  _ShopDetailsScrolledState createState() => _ShopDetailsScrolledState();
}

class _ShopDetailsScrolledState extends State<ShopDetailsScrolled> {
  @override
  Widget build(BuildContext context) {
    final data=MediaQuery.of(context);
    return Scaffold(
              body: SingleChildScrollView(
                child: Container(
                        decoration: BoxDecoration(
                                      image: DecorationImage(
                                              image: AssetImage("Images/image 7.png"),
                                              fit: BoxFit.cover
                                          )
                            ),
                        child: Column(
                          children: [
                              Container(
                                margin: EdgeInsets.only(top: data.size.height/20),
                                color: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: data.size.width/6,
                                      height: data.size.width/6,
                                      decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(100),
                                      ),
                          
                                      child: TextButton(
                                        child: Image.asset("Images/Backicon.png"),
                                        onPressed: (){
                                           Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                              return ShopDetails();
                             }));
                                        },
                                      ),
                                ),
                  
                                    Container(
                                      height: data.size.width/6,
                                      width: data.size.width*6/8.5,
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(  
                                            width: data.size.width/6,
                                            height: data.size.width/6,
                                            decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(100),
                                            ),
                                            child: TextButton(
                                                    child: Image.asset("Images/Favourite.png"),
                                                    onPressed: (){},
                                            ),
                                          ),
                    
                                          Container(
                                            width: data.size.width/6,
                                            height: data.size.width/6,
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

                          Container(
                            margin: EdgeInsets.only(top: data.size.height/10),
                            //padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                            width: data.size.width,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: data.size.height/40),
                                  padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                                  alignment: Alignment.topLeft,
                                  child: Text('Plush Beauty Lounge', 
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.w600,

                                  ),),
                                ),

                                Container(
                                  padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                                  alignment: Alignment.topLeft,
                                  child: Text('360 Stillwater Rd. Palm City, FL 34990', 
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,

                                  ),),
                                ),

                                Container(
                                  //padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                                  margin: EdgeInsets.only(top: data.size.height/40),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: data.size.width/30),
                                            height: 30,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Image.asset('Images/timeicon.png'),
                                                ),
                                                Text('  [Open Today]',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),

                                           Container(
                                            padding: EdgeInsets.only(right: data.size.width/30),
                                            height: 30,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Image.asset('Images/pricetag.png'),
                                                ),
                                                Text('-58% (6 pax available)',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: data.size.width/30),
                                            margin: EdgeInsets.only(bottom: data.size.height/40),
                                            height: 30,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Icon(Icons.star,color: Colors.orange,),
                                                ),
                                                Text('  4.7 (2.7k)',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),

                                           Container(
                                            margin: EdgeInsets.only(bottom: data.size.height/40),
                                            width: data.size.width/2, 
                                            height: 30,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Image.asset('Images/eyee.png'),
                                                ),
                                                Text('  10k views',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                      Divider(
                                        color: Colors.black,
                                        height: 30,
                                        thickness: 1,
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                                        alignment: Alignment.topLeft,
                                        //margin: EdgeInsets.only(top: data.size.height/40, bottom: data.size.height/40),
                                        child: Text("About", 
                                                style: TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 20
                                                ),
                                        ),
                                      ),

                                       Container(
                                        padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(top: data.size.height/40, bottom: data.size.height/40),
                                        child: Text("Living up to our name Plush Beauty Lounge, the team is highly energetic and creative. We believe that if it matters to you, it matters to us. Keeping up to speed with the market’s latest trends, Plush Beauty Lounge recognizes the need for constant improvements. Our team receives regular training from hairdressers all...  Read more", 
                                                style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 14
                                                ),
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(bottom: data.size.height/40),
                                        child: Text("Opening Hours", 
                                                style: TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 20
                                                ),
                                        ),
                                      ),

                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children:[
                                         Column(
                                           children: [
                                             Text('Monday - Friday',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500
                                              ),
                                              ),
                                             Text('08.00am - 03.00pm',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.purple
                                              ),
                                             )
                                           ],
                                         ),
                                          Column(
                                           children: [
                                             Text('Saturday - Sunday',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500
                                              ),
                                             ),
                                             Text('09.00am - 02.00pm',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.purple
                                              ),
                                             )
                                           ],
                                         ),
                                       ]
                                     ),


                                      Container(
                                        padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(top: data.size.height/30, bottom: data.size.height/30),
                                        child: Text("Our Services", 
                                                style: TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 20,
                                                       
                                                ),
                                        ),
                                      ),

                                      Container(
                                        width:data.size.width-2*data.size.width/30,
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
                            InkWell(
                              onTap: (){
                                //  Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                //             return ShopDetails();
                                //             }));
                              },
                              child: Container(
                                width: data.size.width/3,
                                height: data.size.height/5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                                  image: DecorationImage(image: AssetImage("Images/hair1.png"),
                                          fit:BoxFit.cover
                                          )
                                ),
                                // child: Container(
                                //   height: 20,
                                //   width: 50,
                                //   color: Colors.amber,
                                // ),
                            
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Column(
                                    
                                          children:[
                                    
                                
                                Container(
                                  //height: data.size.height/3-data.size.height/5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [                                         
                                            Container(
                                              padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/50),
                                              child:Text("Woman Medium...",
                                                style:TextStyle(
                                                 fontFamily: 'Poppins',  
                                                color: Colors.black,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                            ),),
                                            ),

                                            Row(
                                              children:[ 
                                                Container(
                                                  padding: EdgeInsets.only(left:data.size.width/30,top: data.size.height/100),
                                                  child: Text('\$50',
                                                          style: TextStyle(
                                                            color: Color.fromRGBO(123, 97, 255, 1),
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 18,
                                                            ),
                                                          ),
                                                  ),

                                                  Container(
                                                    padding: EdgeInsets.only(top: data.size.height/100),
                                                    child: Text('  2 hour'),
                                                  )
                                                
                                                ] 
                                            ),
                                          
                                             Row(
                                               //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Container(
                                                    width: data.size.width/2.4,
                                                    padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/100),
                                                    child:Text("A blunt cut bob is a shorter hairstyle th... ",
                                                            style:TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13,
                                                            fontWeight: FontWeight.w400,
                                                            ),
                                                    ),
                                                 ),

                                                  Container(
                                                   margin: EdgeInsets.only(top: data.size.height/100),
                                                    height: data.size.height/15,
                                                    width:  data.size.height/15,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(100),
                                                      border: Border.all(
                                                        color: Colors.red,
                                                        width: 2, 
                                                      ),
                                                    ),
                                                    child: TextButton(
                                                      onPressed: (){},
                                                      child: Icon(Icons.remove,color: Colors.red,),
                                                     
                                                    ),
                                                  )

                                               ]
                                              ),
                            
                                          
                                        ],
                                      ),
                                      
                                    ] 
                                    ),
                                ),
                          ],), 
                                ),
                              ],
                            )
                          ],
                        )
                      ),

                                    Container(
                                      margin: EdgeInsets.only(top: data.size.height/50),
                                        width:data.size.width-2*data.size.width/30,
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
                            InkWell(
                              onTap: (){
                                //  Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                //             return ShopDetails();
                                //             }));
                              },
                              child: Container(
                                width: data.size.width/3,
                                height: data.size.height/5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                                  image: DecorationImage(image: AssetImage("Images/hair2.png"),
                                          fit:BoxFit.cover
                                          )
                                ),
                                // child: Container(
                                //   height: 20,
                                //   width: 50,
                                //   color: Colors.amber,
                                // ),
                            
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Column(
                                    
                                          children:[
                                    
                                
                                Container(
                                  //height: data.size.height/3-data.size.height/5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [                                         
                                            Container(
                                              padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/50),
                                              child:Text("Bob/Lob Cut",
                                                style:TextStyle(
                                                 fontFamily: 'Poppins',  
                                                color: Colors.black,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                            ),),
                                            ),

                                            Row(
                                              children:[ 
                                                Container(
                                                  padding: EdgeInsets.only(left:data.size.width/30,top: data.size.height/100),
                                                  child: Text('\$55',
                                                          style: TextStyle(
                                                            color: Color.fromRGBO(123, 97, 255, 1),
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 18,
                                                            ),
                                                          ),
                                                  ),

                                                  Container(
                                                    padding: EdgeInsets.only(top: data.size.height/100),
                                                    child: Text('  1.5 hour'),
                                                  )
                                                
                                                ] 
                                            ),
                                          
                                             Row(
                                               //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Container(
                                                    width: data.size.width/2.4,
                                                    padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/100),
                                                    child:Text("lob haircut is a women's hairstyle.. ",
                                                            style:TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13,
                                                            fontWeight: FontWeight.w400,
                                                            ),
                                                    ),
                                                 ),

                                                  Container(
                                                   margin: EdgeInsets.only(top: data.size.height/100),
                                                    height: data.size.height/15,
                                                    width:  data.size.height/15,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(100),
                                                      color: Color.fromRGBO(123, 97, 255, 1)
                                                    ),
                                                    child: TextButton(
                                                      onPressed: (){},
                                                      child: Icon(Icons.add,color: Colors.white,),
                                                     
                                                    ),
                                                  )

                                               ]
                                              ),
                            
                                          
                                        ],
                                      ),
                                      
                                    ] 
                                    ),
                                ),
                          ],), 
                                ),
                              ],
                            )
                          ],
                        )
                      ),


                      Container(
                                      margin: EdgeInsets.only(top: data.size.height/50),
                                        width:data.size.width-2*data.size.width/30,
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
                            InkWell(
                              onTap: (){
                                //  Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                //             return ShopDetails();
                                //             }));
                              },
                              child: Container(
                                width: data.size.width/3,
                                height: data.size.height/5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                                  image: DecorationImage(image: AssetImage("Images/hair3.png"),
                                          fit:BoxFit.cover
                                          )
                                ),
                                // child: Container(
                                //   height: 20,
                                //   width: 50,
                                //   color: Colors.amber,
                                // ),
                            
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Column(
                                    
                                          children:[
                                    
                                
                                Container(
                                  //height: data.size.height/3-data.size.height/5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [                                         
                                            Container(
                                              padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/50),
                                              child:Text("Medium Length Layer..",
                                                style:TextStyle(
                                                 fontFamily: 'Poppins',  
                                                color: Colors.black,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                            ),),
                                            ),

                                            Row(
                                              children:[ 
                                                Container(
                                                  padding: EdgeInsets.only(left:data.size.width/30,top: data.size.height/100),
                                                  child: Text('\$80',
                                                          style: TextStyle(
                                                            color: Color.fromRGBO(123, 97, 255, 1),
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 18,
                                                            ),
                                                          ),
                                                  ),

                                                  Container(
                                                    padding: EdgeInsets.only(top: data.size.height/100),
                                                    child: Text('  1 hour'),
                                                  )
                                                
                                                ] 
                                            ),
                                          
                                             Row(
                                               //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Container(
                                                    width: data.size.width/2.4,
                                                    padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/100),
                                                    child:Text("Layered hair is a hairstyle that gives t.. ",
                                                            style:TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13,
                                                            fontWeight: FontWeight.w400,
                                                            ),
                                                    ),
                                                 ),

                                                  Container(
                                                   margin: EdgeInsets.only(top: data.size.height/100),
                                                    height: data.size.height/15,
                                                    width:  data.size.height/15,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(100),
                                                      color: Color.fromRGBO(123, 97, 255, 1)
                                                    ),
                                                    child: TextButton(
                                                      onPressed: (){},
                                                      child: Icon(Icons.add,color: Colors.white,),
                                                     
                                                    ),
                                                  )

                                               ]
                                              ),
                            
                                          
                                        ],
                                      ),
                                      
                                    ] 
                                    ),
                                ),
                          ],), 
                                ),
                              ],
                            )
                          ],
                        )
                      ),

                      Container(
                                      margin: EdgeInsets.only(top: data.size.height/50),
                                        width:data.size.width-2*data.size.width/30,
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
                            InkWell(
                              onTap: (){
                                //  Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                //             return ShopDetails();
                                //             }));
                              },
                              child: Container(
                                width: data.size.width/3,
                                height: data.size.height/5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                                  image: DecorationImage(image: AssetImage("Images/hair4.png"),
                                          fit:BoxFit.cover
                                          )
                                ),
                                // child: Container(
                                //   height: 20,
                                //   width: 50,
                                //   color: Colors.amber,
                                // ),
                            
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Column(
                                    
                                          children:[
                                    
                                
                                Container(
                                  //height: data.size.height/3-data.size.height/5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [                                         
                                            Container(
                                              padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/50),
                                              child:Text("V-Shaped Cut.",
                                                style:TextStyle(
                                                 fontFamily: 'Poppins',  
                                                color: Colors.black,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                            ),),
                                            ),

                                            Row(
                                              children:[ 
                                                Container(
                                                  padding: EdgeInsets.only(left:data.size.width/30,top: data.size.height/100),
                                                  child: Text('\$90',
                                                          style: TextStyle(
                                                            color: Color.fromRGBO(123, 97, 255, 1),
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 18,
                                                            ),
                                                          ),
                                                  ),

                                                  Container(
                                                    padding: EdgeInsets.only(top: data.size.height/100),
                                                    child: Text('  2.5 hour'),
                                                  )
                                                
                                                ] 
                                            ),
                                          
                                             Row(
                                               //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Container(
                                                    width: data.size.width/2.4,
                                                    padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/100),
                                                    child:Text("There are a lot of variations between.. ",
                                                            style:TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13,
                                                            fontWeight: FontWeight.w400,
                                                            ),
                                                    ),
                                                 ),

                                                  Container(
                                                   margin: EdgeInsets.only(top: data.size.height/100),
                                                    height: data.size.height/15,
                                                    width:  data.size.height/15,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(100),
                                                      color: Color.fromRGBO(123, 97, 255, 1)
                                                    ),
                                                    child: TextButton(
                                                      onPressed: (){},
                                                      child: Icon(Icons.add,color: Colors.white,),
                                                     
                                                    ),
                                                  )

                                               ]
                                              ),
                            
                                          
                                        ],
                                      ),
                                      
                                    ] 
                                    ),
                                ),
                          ],), 
                                ),
                              ],
                            )
                          ],
                        )
                      ),

                      Container(
                        padding: EdgeInsets.only(top: data.size.height/30, bottom:data.size.height/30 ),
                        child: Button0()
                      ),


                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:[
                            Container(
                            padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: data.size.height/40, bottom: data.size.height/40),
                            child: Text("Gallery", 
                                    style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20
                                          ),
                            ),
                          ),

                            Container(
                              padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: data.size.height/40,bottom: data.size.height/40, right: data.size.width/30),
                              child: Text("View all", 
                                      style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                              color: Color.fromRGBO(123, 97, 255, 1)
                                            ),
                              ),
                            ),


                          ] ),


                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  margin:EdgeInsets.only(top:data.size.height/40, right: data.size.width/40,left: data.size.width/30),
                                  width: data.size.width/4,
                                  height: data.size.width/4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                   
                                  ),

                                  child: Image.asset("Images/gal1.png"),
                                ),

                                Container(
                                  margin:EdgeInsets.only(top:data.size.height/40,right: data.size.width/40),
                                  width: data.size.width/4,
                                  height: data.size.width/4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),

                                  child: Image.asset("Images/gal2.png"),
                                ),

                                Container(
                                  margin:EdgeInsets.only(top:data.size.height/40, right: data.size.width/40),
                                  width: data.size.width/4,
                                  height: data.size.width/4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),

                                  child: Image.asset("Images/gal3.png"),
                                ),

                                Container(
                                  margin:EdgeInsets.only(top:data.size.height/40, right: data.size.width/40),
                                  width: data.size.width/4,
                                  height: data.size.width/4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),

                                  child: Image.asset("Images/gal4.png",fit: BoxFit.cover,),
                                ),


                              ],
                            ),
                          ),


                          Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:[
                            Container(
                            padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: data.size.height/40, bottom: data.size.height/40),
                            child: Text("Our Specilaists", 
                                    style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20
                                          ),
                            ),
                          ),

                            Container(
                              padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: data.size.height/40,bottom: data.size.height/40, right: data.size.width/30),
                              child: Text("View all", 
                                      style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                              color: Color.fromRGBO(123, 97, 255, 1)
                                            ),
                              ),
                            ),


                          ] ),  


                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                                    margin: EdgeInsets.only(bottom:data.size.height/45),
                                    child:Padding(
                                             padding: EdgeInsets.only(left:data.size.width/32),
                                             child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                         Container(
                           padding: EdgeInsets.all(5),
                            child: Container(
                              height: data.size.height/10,
                              width: data.size.height/10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(image: AssetImage("Images/man1.png"))
                              ),
                            ),
                          ),
                          Container(
                            
                            padding: EdgeInsets.all(5),
                            child: Container(
                              height: data.size.height/10,
                              width: data.size.height/10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                        image: AssetImage("Images/man2.png"),
                                        fit: BoxFit.cover
                                      )
                              ),
                            ),
                          ),


                         Container(
                           padding: EdgeInsets.all(5),
                            child: Container(
                              height: data.size.height/10,
                              width: data.size.height/10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color:Color.fromRGBO(139, 8, 134, 1),
                                image: DecorationImage(
                                        image: AssetImage("Images/man3.png"),
                                        fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              height: data.size.height/10,
                              width: data.size.height/10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color:Color.fromRGBO(139, 8, 134, 1),
                                 image: DecorationImage(
                                  image: AssetImage("Images/man4.png"),
                                          fit:BoxFit.cover),
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              height: data.size.height/10,
                              width: data.size.height/10,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("Images/man5.png"),
                                          fit:BoxFit.cover),
                                borderRadius: BorderRadius.circular(100),
                                color:Color.fromRGBO(139, 8, 134, 1)
                              ),
                            ),
                          ),

                         Container(
                           padding: EdgeInsets.all(5),
                            child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: data.size.height/10,
                                        width: data.size.height/10,
                                        decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(100),
                                          color:Color.fromRGBO(139, 8, 134, 1),
                                           image: DecorationImage(
                                                   image: AssetImage("Images/sa1.jpg"),
                                                   fit:BoxFit.cover),
                                        ),
                                      ),
                                    ]
                            ),
                          ),

                        ]
                      ),
                    ),
                    
                  ),
                ),

                           Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:[
                            Container(
                            padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: data.size.height/40, bottom: data.size.height/40),
                            child: Text("Reviews", 
                                    style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20
                                          ),
                            ),
                          ),

                            Container(
                              padding: EdgeInsets.only(left: data.size.width/30,right: data.size.width/30),
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: data.size.height/40,bottom: data.size.height/40, right: data.size.width/30),
                              child: Text("View all", 
                                      style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                              color: Color.fromRGBO(123, 97, 255, 1) 
                                            ),
                              ),
                            ),


                          ] ), 



                           Container(
                                      margin: EdgeInsets.only(top: data.size.height/50, bottom: data.size.height/50),
                                      padding: EdgeInsets.only(left: data.size.width/30, right: data.size.width/30,),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                       
                                        ),

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Container(
                                alignment: Alignment.topLeft,
                                width: data.size.width/6,
                                height: data.size.width/6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(image: AssetImage("Images/hair3.png"),
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [                                         
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Container(
                                                width: data.size.width/2,
                                                padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/50),
                                                child:Text("Jennie Whang",
                                                  style:TextStyle(
                                                   fontFamily: 'Poppins',  
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                              ),),
                                              ),


                                               Container(
                                                padding: EdgeInsets.only(left: data.size.width/20,top: data.size.height/50),
                                                child:Text("2 days ago",
                                                  style:TextStyle(
                                                   fontFamily: 'Poppins',  
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                              ),),
                                              ),


                                               ] 
                                              ),

                                            Container(
                                              padding: EdgeInsets.only(top:data.size.height/60, left: data.size.width/30),
                                              child: Row(
                                                children:[ 
                          

                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.grey,),

                                                  
                                                  ] 
                                              ),
                                            ),
                                          
                                             Row(
                                               children: [
                                                 Container(
                                                    width: data.size.width/1.4,
                                                    padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/50, right: data.size.width/30),
                                                    child:Text("The place was clean, great serivce, stall are friendly. I will certainly recommend to my friends and visit again! ;)",
                                                            style:TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w400,
                                                            ),
                                                    ),
                                                 ),
                                               ]
                                              ),
                            
                                          
                                        ],
                                      ),
                                      
                                    ] 
                                    ),
                                ),
                          ],), 
                                ),
                              ],
                            )
                          ],
                        )
                      ),

                      Container(
                                      margin: EdgeInsets.only(top: data.size.height/50, bottom: data.size.height/50),
                                      padding: EdgeInsets.only(left: data.size.width/30, right: data.size.width/30,),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                       
                                        ),

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Container(
                                alignment: Alignment.topLeft,
                                width: data.size.width/6,
                                height: data.size.width/6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(image: AssetImage("Images/hair3.png"),
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [                                         
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Container(
                                                width: data.size.width/2,
                                                padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/50),
                                                child:Text("Nathalie",
                                                  style:TextStyle(
                                                   fontFamily: 'Poppins',  
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                              ),),
                                              ),


                                               Container(
                                                padding: EdgeInsets.only(left: data.size.width/20, top: data.size.height/50),
                                                child:Text("2 days ago",
                                                  style:TextStyle(
                                                   fontFamily: 'Poppins',  
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                              ),),
                                              ),


                                               ] 
                                              ),

                                            Container(
                                              padding: EdgeInsets.only(top:data.size.height/60, left: data.size.width/30),
                                              child: Row(
                                                children:[ 
                          

                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.grey,),

                                                  
                                                  ] 
                                              ),
                                            ),
                                          
                                             Row(
                                               children: [
                                                 Container(
                                                    width: data.size.width/1.4,
                                                    padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/50, right: data.size.width/30),
                                                    child:Text("Very nice service from the specialist. I always going here for my treatment.",
                                                            style:TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w400,
                                                            ),
                                                    ),
                                                 ),
                                               ]
                                              ),
                            
                                          
                                        ],
                                      ),
                                      
                                    ] 
                                    ),
                                ),
                          ],), 
                                ),
                              ],
                            )
                          ],
                        )
                      ),

                      Container(
                                      margin: EdgeInsets.only(top: data.size.height/50, bottom: data.size.height/50),
                                      padding: EdgeInsets.only(left: data.size.width/30, right: data.size.width/30,),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                       
                                        ),

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Container(
                                alignment: Alignment.topLeft,
                                width: data.size.width/6,
                                height: data.size.width/6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(image: AssetImage("Images/hair3.png"),
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [                                         
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Container(
                                                width: data.size.width/2,
                                                padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/50),
                                                child:Text("Julia Martha",
                                                  style:TextStyle(
                                                   fontFamily: 'Poppins',  
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                              ),),
                                              ),


                                               Container(
                                                padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/50),
                                                child:Text("2 weeks ago",
                                                  style:TextStyle(
                                                   fontFamily: 'Poppins',  
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                              ),),
                                              ),


                                               ] 
                                              ),

                                            Container(
                                              padding: EdgeInsets.only(top:data.size.height/60, left: data.size.width/30),
                                              child: Row(
                                                children:[ 
                          

                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.orange,),
                                                   Icon(Icons.star,color: Colors.grey,),

                                                  
                                                  ] 
                                              ),
                                            ),
                                          
                                             Row(
                                               children: [
                                                 Container(
                                                    width: data.size.width/1.4,
                                                    padding: EdgeInsets.only(left:data.size.width/30, top: data.size.height/50, right: data.size.width/30),
                                                    child:Text("This is my favourite place to treat my hair :)",
                                                            style:TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w400,
                                                            ),
                                                    ),
                                                 ),
                                               ]
                                              ),
                            
                                          
                                        ],
                                      ),
                                      
                                    ] 
                                    ),
                                ),
                          ],), 
                                ),
                              ],
                            )
                          ],
                        )
                      ),




                         Divider()           
                                    ],
                                  ),
                                )

                              ],
                            ),
                            
                          )

                          ]
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
      border: Border.all(
        color: Color.fromRGBO(123, 97, 255, 1),
        width: 2
      ),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black,
      //     offset: Offset(0.0,3.0),
      //     blurRadius: 3.0
      //   )
      //],
      gradient: LinearGradient(
        colors: [
          Colors.white,
          Colors.white,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight
      )
    ),
    child: Center(child: Text("View All Services",
                          style: TextStyle(
                            color: Color.fromRGBO(123, 97, 255, 1),
                            fontSize: 20,
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
                  width: data.size.width*1.8/2,
                  height: data.size.height/14,
                  child: GestureDetector(
                  onTap: (){
                    // Navigator.of(context).push(MaterialPageRoute(builder: (_){
                    //           return HomePage();
                    //          }));
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