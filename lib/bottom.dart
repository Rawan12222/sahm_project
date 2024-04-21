import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sahm_project/myCrt2.dart';
import 'package:sahm_project/myProfile.dart';



class navigatorController extends GetxController{
  
  var tabIndex=0;
  void changeTabIndex(int index){
    tabIndex= index;
    update();

  }

}

class BottomNabigation extends StatefulWidget {    
  const BottomNabigation ({Key? key}): super (key: key);
  @override
  _BottomNabigation createState() => _BottomNabigation();  
}

class _BottomNabigation extends State<BottomNabigation>{
  
  final controller = Get.put(navigatorController());
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-36.4285;
    final currenheight = MediaQuery.of(context).size.height+128.571429;
    // TODO: implement build
    //throw UnimplementedError();
    return GetBuilder<navigatorController>(
      builder: (context){
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: [
              Text("home page"),
              Text("shop"),
              myCart2(),
              Text("favorite"),
              profile()
            ],
          ),

          bottomNavigationBar: Container(
            child: GNav(
              //onTabChange:,
              //onTabChange: controller.tabIndex,
              
              tabs: [

                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  //onPressed: controller.tabIndex,
                   ),

                  GButton(
                  icon: Icons.shopping_cart_outlined,
                  text: 'Shop'),

                  GButton(
                  icon: Icons.shopping_bag_outlined,
                  text: 'Cart'),

                  GButton(
                  icon: Icons.favorite_outline,
                  text: 'Favorite'),

                  GButton(
                  icon: Icons.person,
                  text: 'Profile'),


              ]),
          ),


        );
      });
  }
}
