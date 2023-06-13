import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app_flutter/constant.dart';
import 'package:workout_app_flutter/widgets/bottom_nav_bar.dart';
import 'package:workout_app_flutter/widgets/category_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kbackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home:  const HomeScreen(),
    );
  }
}

class HomeScreen  extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      //bottomNavigationBar: BottomNavigationBar(),
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height*.45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/template.png")
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget> [
                  Align( 
                    alignment: Alignment.topRight,
                    child: Container( 
                      alignment: Alignment.center,
                      height: 40,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      //child :SvgPicture.asset("assets/icon/menu.svg")
                    ),
                  ),
                  Text(
                    "Good Morning \nSanket",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith( color: Color.fromARGB(255, 35, 34, 34),fontWeight :  FontWeight.bold),
                    
                  ),
                  //SearchBar();
                  Container( 
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 233, 233),
                      borderRadius: BorderRadius.circular(30),
                      
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "search",
                        border: InputBorder.none

                      ),
                    ),
                  ),

                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .90,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      children:  <Widget>[

                        CategoryCard(
                          title: "Diet Recomendation",
                          press: (){},
                          svgSrc: "assets/images/Hamburger.svg",

                        ),
                        CategoryCard(
                          title: "Diet Recomendation",
                          press: (){},
                          svgSrc: "",
                        ),
                        CategoryCard(
                          title: "Diet Recomendation",
                          press: (){},
                          svgSrc: "",
                        ),
                        CategoryCard(
                          title: "Diet Recomendation",
                          press: (){},
                          svgSrc: "",
                        ),


                      ],
                    ),
                  ),
                ]
              ),

            ),
          ),
        ],
      ),
    );
  }

}



