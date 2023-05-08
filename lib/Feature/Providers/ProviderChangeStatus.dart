import 'package:flutter/cupertino.dart';
import 'package:travel_application/Feature/DataList/DataList.dart';
import 'package:travel_application/Feature/View/Screens/About%20Us/about%20us.dart';
import 'package:travel_application/Feature/View/Screens/HomeScreen/HomeScreen.dart';

class ProviderChangeStatus extends ChangeNotifier{

  int indexPageView=0;

  void changeIndexPageView(int newIndexPageView){
    indexPageView=newIndexPageView;
    notifyListeners();
  }

  int currentIndex=0;
  void changecurrentIndex(int newCurrentIndex){
    currentIndex=newCurrentIndex;
    notifyListeners();
  }
  List<Widget> screens=[
    HomeScreen(),
    AboutScreen()

  ];

  int indexPageViewHotelScreen=0;

  void changeIndexPageViewHotelScreen(int newIndexPageViewHotelScreen){
    indexPageViewHotelScreen=newIndexPageViewHotelScreen;
    notifyListeners();
  }

  int indexPageViewCarScreen=0;

  void changeIndexPageViewCarScreen(int newIndexPageViewCarScreen){
    indexPageViewCarScreen=newIndexPageViewCarScreen;
    notifyListeners();
  }

}