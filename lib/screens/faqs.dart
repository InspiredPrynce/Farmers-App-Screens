import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';
import '../widgets/drawer.dart';

class FaqsScreen extends StatelessWidget {
    const FaqsScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("FAQS"),
            ),
            body: const Center(
                child: Text("FAQS Screen"),
            ),
            drawer: FancyDrawer(),
            bottomNavigationBar: CustomBottomNavigationBar().buildBottomNavigation(context, index: 0)
        );
    }
}
