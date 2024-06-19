import 'package:farmers_app/widgets/kImages.dart';
import 'package:flutter/material.dart';
import 'package:farmers_app/screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
    const SplashScreen({super.key});

    @override
    _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
    late AnimationController _controller;
    late Animation<double> _scaleAnimation;
    late Animation<Offset> _slideAnimation;

    @override
    void initState() {
        super.initState();
        _controller = AnimationController(
            duration: const Duration(seconds: 1),
            vsync: this,
        )..repeat(reverse: true);

        _scaleAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(_controller);
        _slideAnimation = Tween<Offset>(begin: Offset.zero, end: const Offset(0.1, 0)).animate(_controller);

        // Navigate to the next screen after a delay
        Future.delayed(const Duration(seconds: 9), () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const OnboardingScreen()));
        });
    }

    @override
    void dispose() {
        _controller.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: SlideTransition(
                    position: _slideAnimation,
                    child: ScaleTransition(
                        scale: _scaleAnimation,
                        child: Image.asset(appIcon, width: 150, height: 150),
                    ),
                ),
            ),
        );
    }
}
