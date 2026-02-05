import 'package:flutter/material.dart';



  @override
  Widget buildBottomNavigationBar(BuildContext context,int currentIndex) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed, 
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Catagories'),
        BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: 'About'),
      ],
      onTap: (index) {
        String routeName;
        switch (index){
          case 0:
            routeName='/home';
            break;
          case 1:
            routeName='/catagory';
            break;
          case 2:
            routeName='/about';
            break;
          default:
            routeName='/home';
        }
         if (ModalRoute.of(context)!.settings.name != routeName) {
        Navigator.pushReplacementNamed(context, routeName);
      }
      },
    );
  }

