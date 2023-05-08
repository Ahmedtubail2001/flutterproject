import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_application/Feature/Providers/ProviderChangeStatus.dart';
import 'package:travel_application/Feature/View/Screens/HomeScreen/HomeScreen.dart';

import 'Screens/About Us/about us.dart';

class LayoutApp extends StatelessWidget {
   LayoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var providerController=Provider.of<ProviderChangeStatus>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blueAccent,
        onTap: (index){
         providerController.changecurrentIndex(index);
        },
        currentIndex: providerController.currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          // BottomNavigationBarItem(icon: Icon(Icons.local_activity_outlined),label: "Activity"),
          // BottomNavigationBarItem(icon: Icon(Icons.slow_motion_video),label: "Promo"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: "About Us"),
        ],

      ),
      body: providerController.screens[providerController.currentIndex],
    );
  }
}
