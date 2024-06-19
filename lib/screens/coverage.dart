import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';
import '../widgets/drawer.dart';

class CoverageScreen extends StatelessWidget {
    const CoverageScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Our Coverage"),
            ),
            body: const Center(
                child: Text("Our Coverage Screen"),
            ),
            drawer: FancyDrawer(),
            bottomNavigationBar: CustomBottomNavigationBar().buildBottomNavigation(context, index: 0)
        );
    }
}
