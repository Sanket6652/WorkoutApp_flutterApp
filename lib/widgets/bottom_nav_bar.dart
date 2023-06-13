import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout_app_flutter/constant.dart';

import '../main.dart';



class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
      height: 80,
      color: kNavBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:   const <Widget>[ 
            BottomNavItem(
              title: "Today", 
              isActive: true, 
             // press: null, 
              
            ),
            BottomNavItem(
              title:"All Exercise",
              isActive: true,
              //press: ,

            ),
            BottomNavItem(
              title:"setting",
              isActive: true,
              //press: null,
              
            ),

         ],
        ),
    );
  }
}



class BottomNavItem extends StatelessWidget {
  final String title;
  // final Function press;
   final bool isActive;
  const BottomNavItem({
    super.key, 
    required this.title, 
    required this.isActive,  
    
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
     child: Column( 
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:<Widget> [
        SvgPicture.asset("assets/icon/calender.svg"),
         Text(
          title,
          style: TextStyle(color: isActive?KActiveIconColor:kTextColor),

        ),
               
       ],
     ),
    );
  }
}

