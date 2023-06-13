import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Function press;
  final String svgSrc;
  const CategoryCard({
    super.key, required this.title, required this.press, required this.svgSrc,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container( 
        decoration: const BoxDecoration( 
          color: Colors.white,
          boxShadow:[ 
            BoxShadow(
              offset: Offset(0,17),
              blurRadius: 17,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap:press() ,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children:<Widget> [
                  const Spacer(),
                  //Padding(padding: ),
                  SvgPicture.asset(svgSrc),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(
                        fontSize: 15
                       ),
                      )
                   
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

