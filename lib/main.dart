import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'routes.dart';

import 'widgets/kThemeData.dart';

void main() async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    await Hive.initFlutter();
    await Hive.openBox('settings');
    runApp(const MyApp());
}

class MyApp extends StatefulWidget {
    const MyApp({super.key});

    @override
    _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    late Box settingsBox;

    @override
    void initState() {
        super.initState();
        settingsBox = Hive.box('settings');
        nativeSplashInit();
    }

    void nativeSplashInit() async {
        await Future.delayed(const Duration(seconds: 3));
        FlutterNativeSplash.remove();
    }

    @override
    Widget build(BuildContext context) {
        return ValueListenableBuilder(
            valueListenable: settingsBox.listenable(),
            builder: (context, Box box, widget) {
                bool isDarkMode = box.get('isDarkMode', defaultValue: true);
                return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: lightTheme,
                    darkTheme: darkTheme,
                    themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
                    routes: appRoutes,
                    initialRoute: '/splash'
                );
            },
        );
    }
}
