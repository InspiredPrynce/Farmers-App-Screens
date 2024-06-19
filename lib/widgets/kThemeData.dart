import 'package:flutter/material.dart';

const primaryColor = Color(0xFF005F00);
const secondaryColor = Color(0xFFB7FF69);
const priceColor = Color(0xFF00d656);

BoxDecoration getBoxDecoration(context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return BoxDecoration(
        color: isDarkMode ? const Color(0xFF1E1E1E) : const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
            BoxShadow(
                color: isDarkMode ? Colors.black.withOpacity(0.9) : Colors.grey.withOpacity(0.9),
                blurRadius: 2,
            ),
        ],
    );
}

final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFF121212),
    dividerColor: Colors.white,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        elevation: 0
    ),
    listTileTheme: const ListTileThemeData(
        iconColor: secondaryColor
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.transparent
    ),
    buttonTheme: const ButtonThemeData(
        buttonColor: primaryColor,
        textTheme: ButtonTextTheme.primary
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: primaryColor
        )
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            textStyle: WidgetStateProperty.all<TextStyle>(const TextStyle(
                color: Colors.black
            ))
        )
    ),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
        bodyMedium: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
        bodySmall: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
        titleLarge: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
        titleMedium: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
        titleSmall: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
        displaySmall: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
        displayMedium: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
        displayLarge: TextStyle(color: Colors.white, fontFamily: 'Montserrat')
    ),
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF1E1E1E),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0)
        ),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                color: priceColor,
                width: 1
            )
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                color: priceColor,
                width: 1
            )
        ),
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 12.0
        )
    ),
    colorScheme: const ColorScheme.dark(
        background: Color(0xFF121212),
        primary: primaryColor,
        onPrimary: Colors.white,
        secondary: secondaryColor,
        onSecondary: Colors.white,
        error: Colors.redAccent,
        onError: Colors.white,
        onBackground: Colors.white,
        surface: Color(0xFF1E1E1E),
        onSurface: Colors.white
    ),
);

final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFFF5F5F5).withOpacity(0.9),
    dividerColor: Colors.grey,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        elevation: 0
    ),
    listTileTheme: const ListTileThemeData(
        iconColor: primaryColor
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.transparent
    ),
    buttonTheme: const ButtonThemeData(
        buttonColor: primaryColor,
        textTheme: ButtonTextTheme.primary
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: primaryColor
        )
    ),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.black, fontFamily: 'Montserrat'),
        bodyMedium: TextStyle(color: Colors.black, fontFamily: 'Montserrat'),
        bodySmall: TextStyle(color: Colors.black, fontFamily: 'Montserrat'),
        titleLarge: TextStyle(color: Colors.black, fontFamily: 'Montserrat'),
        titleMedium: TextStyle(color: Colors.black, fontFamily: 'Montserrat'),
        titleSmall: TextStyle(color: Colors.black, fontFamily: 'Montserrat'),
        displaySmall: TextStyle(color: Colors.black, fontFamily: 'Montserrat'),
        displayMedium: TextStyle(color: Colors.black, fontFamily: 'Montserrat'),
        displayLarge: TextStyle(color: Colors.black, fontFamily: 'Montserrat')
    ),
    iconTheme: const IconThemeData(color: Colors.black),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            textStyle: WidgetStateProperty.all<TextStyle>(const TextStyle(
                color: Colors.black
            ))
        )
    ),
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0)
        ),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                color: priceColor,
                width: 1
            )
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                color: priceColor,
                width: 1
            )
        ),
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 12.0
        )
    ),
    colorScheme: const ColorScheme.light(
        background: Colors.white,
        primary: primaryColor,
        onPrimary: Colors.white,
        secondary: secondaryColor,
        onSecondary: Colors.white,
        error: Colors.redAccent,
        onError: Colors.white,
        onBackground: Colors.black,
        surface: Color(0xFFF5F5F5),
        onSurface: Colors.black
    ),
);
