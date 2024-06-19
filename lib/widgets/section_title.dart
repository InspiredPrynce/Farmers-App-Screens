import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'kThemeData.dart';

final settingsBox = Hive.box('settings');

Widget buildSectionTitle(context, {required String title, required bool linked, String? linkedTitle, onTap, int? index}){

    final theme = Theme.of(context);
    bool isDarkMode = settingsBox.get('isDarkMode', defaultValue: true);
    final size = MediaQuery.of(context).size;

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text(
                title,
                style: theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
            ),
            if (linked) GestureDetector(
                key: ValueKey(index),
                onTap: onTap,
                child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: size.width * 0.17,
                    decoration: getBoxDecoration(context).copyWith(
                        color: theme.colorScheme.background
                    ),
                    child: Text(
                        linkedTitle!,
                        style: theme.textTheme.bodySmall!.copyWith(
                            color: isDarkMode ? priceColor : primaryColor,
                            fontWeight: FontWeight.bold
                        ),
                    ),
                ),
            ) else const SizedBox(),
        ],
    );
}