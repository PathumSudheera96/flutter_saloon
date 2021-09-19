import 'package:flutter/material.dart';

void main() {
  runApp(MySalonApp());
}
 class MySalonApp extends StatefulWidget {
   const MySalonApp({ Key key }) : super(key: key);
 
   @override
   _MySalonAppState createState() => _MySalonAppState();
 }
 
 class _MySalonAppState extends State<MySalonApp> {
  Widget build(BuildContext context) {
    final data=MediaQuery.of(context).size;
   
    return MaterialApp(
              title: "salons.lk",
              theme: ThemeData(
                
              ),
              home:
            
                Container(
                  height: data.height,
                  child: Scaffold(
                    body: SingleChildScrollView(
                                child: Container(
                                width: 500,
                                decoration: BoxDecoration(
                                  //color: Colors.purple,
                                  image: DecorationImage(
                                    image:AssetImage("Images/Bg.png"),
                                    fit: BoxFit.cover,
                                    
                                  )
                                ),

                                child: Column(
                                  
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 111, 0, 0),
                                      
                                     child: Container(
                                        width: 85,
                                        height: 85,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: Colors.purple,
                                          image: DecorationImage(image:AssetImage("Images/Group 61.png"))
                                        ),
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                                      child: Text("SALONS.LK",
                                        style: TextStyle(fontSize: 40,color:Color.fromRGBO(205, 82, 200, 1),fontWeight: FontWeight.normal,letterSpacing:6)
                                      ),
                                      ),
                                    
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                      child: Text("Brings beauty to your fingertips.",
                                        style: TextStyle(fontSize: 18,color:Colors.black,fontWeight: FontWeight.normal,letterSpacing:2)
                                      ),
                                      ),

                                     Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(185, 0, 177, 1),
                                        borderRadius: BorderRadius.circular(30)
                                      ),
                                      margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                                      child: SizedBox(
                                        width: 236,
                                        height: 47,
                                        child: TextButton(onPressed: (){}, child: Text("Login",style: TextStyle(
                                          fontSize:16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white
                                        ),)),
                                      ),
                                      ),

                                          Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                         border: Border.all(
                                              color: Color.fromRGBO(185, 0, 177, 1),
                                              width: 2
                                        ),
                                                                          
                                      ),
                                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                      child: SizedBox(
                                        width: 232,
                                        height: 43,
                                        child: TextButton(onPressed: (){}, child: Text("Register",style: TextStyle(
                                          fontSize:16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.purple
                                        ),)),
                                      ),
                                      ),

                                    Container(
                                      margin: EdgeInsets.all(30),
                                      child: Text("Or continue with", style:TextStyle(
                                        fontSize: 16,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w600,
                                        color:Colors.black
                                      )
                                    )
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(100,0,100,0),
                                    child: Row(
                                    
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:[
                                         SizedBox(
                                           height: 85,
                                           width: 85,
                                           child: TextButton(
                                             onPressed: (){},
                                             child: Image(
                                               image: AssetImage("Images/facebook.png")
                                               )
                                              ),
                                      ),
                                         SizedBox(
                                           height: 80,
                                           width: 80, 
                                           child: TextButton(
                                             onPressed: (){},
                                             child: Image(
                                               image: AssetImage("Images/search.png")
                                               )
                                              ),
                                      )

                                      ]
                                 
                                    ),
                                  )



                                  ]
                                ),
                              
                      ),
                    ),
                    
                    ),
                ),
             
      
    );
  }
}