
import 'package:flutter/material.dart';
import 'package:styley/Screens/LayOutScreens/FavoritesScreen.dart';
import 'package:styley/Screens/LayOutScreens/NotificationScreen.dart';
import 'package:styley/Screens/LayOutScreens/OrdersScreen.dart';
import 'package:styley/Screens/LayOutScreens/ProfileScreen.dart';
import 'package:styley/Screens/LayOutScreens/StoresScreen.dart';


class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget> screens=[
    StoresScreen(),
    OrdersScreen(),
    FavoritesScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  List<BottomNavigationBarItem> BottomItems = [

      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.format_list_numbered),
        label: 'Orders',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'favorite',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications),
        label: 'notifications',
      ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'profile',
    ),
  ];


  int indexx=0;
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: screens[indexx],


      bottomNavigationBar: BottomNavigationBar(

        backgroundColor:  Colors.yellow,

        items:  BottomItems,
    currentIndex: indexx,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepPurpleAccent,
        onTap: (index) {
          setState(() {
            indexx=index;
          });
        },
      ),
    );
        //other params

    //other params

  }
}
