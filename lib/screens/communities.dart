import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';
import '../widgets/drawer.dart';

class CommunitiesScreen extends StatelessWidget {
    const CommunitiesScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Communities"),
            ),
            body: const Center(
                child: Text("Communities Screen"),
            ),
            drawer: FancyDrawer(),
            bottomNavigationBar: CustomBottomNavigationBar().buildBottomNavigation(context, index: 0)
        );
    }
}
