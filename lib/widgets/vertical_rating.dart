import 'package:flutter/material.dart';

import 'kThemeData.dart';

Widget buildVerticalRating(context){
    return Container(
        width: 35,
        padding: const EdgeInsets.all(3),
        decoration: getBoxDecoration(context).copyWith(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                const Icon(Icons.star, color: Colors.deepOrangeAccent, size: 17),
                const SizedBox(height: 3),
                Text(
                    "4.5",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                )
            ],
        ),
    );
}