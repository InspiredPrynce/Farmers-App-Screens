import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';
import '../widgets/drawer.dart';

class ProfileScreen extends StatelessWidget {
    const ProfileScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Profile"),
            ),
            body: const Center(
                child: Text("Profile Screen"),
            ),
            drawer: FancyDrawer(),
            bottomNavigationBar: CustomBottomNavigationBar().buildBottomNavigation(context, index: 0)
        );
    }
}
