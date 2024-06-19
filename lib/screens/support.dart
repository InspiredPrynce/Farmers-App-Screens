import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';
import '../widgets/drawer.dart';

class SupportScreen extends StatelessWidget {
    const SupportScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Support"),
            ),
            body: const Center(
                child: Text("Support Screen"),
            ),
            drawer: FancyDrawer(),
            bottomNavigationBar: CustomBottomNavigationBar().buildBottomNavigation(context, index: 0)
        );
    }
}
