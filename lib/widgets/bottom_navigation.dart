import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'kThemeData.dart';

class CustomBottomNavigationBar
{
    Widget buildBottomNavigation(context, {int index = 0}){

        final size = MediaQuery.of(context).size;
        final theme = Theme.of(context);

        return Container(
            height: 60.0,
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
            decoration: getBoxDecoration(context).copyWith(
                borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    GestureDetector(
                        onTap: (){
                            Navigator.pushReplacementNamed(context, '/home');
                        },
                        child: Container(
                            width: size.width * 0.28,
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: index == 0 ? priceColor.withOpacity(0.3) : Colors.transparent,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: const Row(
                                children: [
                                    Icon(
                                        FontAwesomeIcons.homeAlt,
                                        size: 15
                                    ),
                                    SizedBox(width: 10),
                                    Text("Home")
                                ],
                            ),
                        ),
                    ),
                    GestureDetector(
                        onTap: (){
                            Navigator.pushReplacementNamed(context, '/farms');
                        },
                        child: Container(
                            width: size.width * 0.28,
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: index == 1 ? priceColor.withOpacity(0.3) : Colors.transparent,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: const Row(
                                children: [
                                    Icon(
                                        FontAwesomeIcons.plantWilt,
                                        size: 17
                                    ),
                                    SizedBox(width: 10),
                                    Text("Farms")
                                ],
                            ),
                        ),
                    ),
                    GestureDetector(
                        onTap: (){
                            Navigator.pushReplacementNamed(context, '/products');
                        },
                        child: Container(
                            width: size.width * 0.28,
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: index == 2 ? priceColor.withOpacity(0.8) : Colors.transparent,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: const Row(
                                children: [
                                    Icon(
                                        FontAwesomeIcons.boxesStacked,
                                        size: 17
                                    ),
                                    SizedBox(width: 10),
                                    Text("Products")
                                ],
                            ),
                        ),
                    )
                ]
            ),
        );
    }
}