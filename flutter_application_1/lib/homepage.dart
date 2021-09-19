import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepageBody.dart';
//import 'package:flutter_application_1/style.dart';
//import 'package:flutter_application_1/login.dart';
//import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int _selectedIndex = 0;
    
    void _onItemTapped(int index){
        setState(() {
          _selectedIndex = index;
        });
        }

  @override
  Widget build(BuildContext context) {
    final data= MediaQuery.of(context);
    
    return  Scaffold(
      
      body: HomepageBody(),
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(color: Colors.grey,size: data.size.height/20),
        selectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 12
        ),
        backgroundColor: Colors.white,
        items: const<BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.grey,),
            label: 'Home',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.grey,),
            label: 'Search',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today,color: Colors.grey,),
            label: 'Bookings',
            
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.grey,),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
     
    );
  }
}

