import 'package:farmers_app/screens/about.dart';
import 'package:farmers_app/screens/auth.dart';
import 'package:farmers_app/screens/communities.dart';
import 'package:farmers_app/screens/coverage.dart';
import 'package:farmers_app/screens/faqs.dart';
import 'package:farmers_app/screens/home.dart';
import 'package:farmers_app/screens/intro.dart';
import 'package:farmers_app/screens/login.dart';
import 'package:farmers_app/screens/forgotten_password.dart';
import 'package:farmers_app/screens/profile.dart';
import 'package:farmers_app/screens/register.dart';
import 'package:farmers_app/screens/register_type.dart';
import 'package:farmers_app/screens/reset_password.dart';
import 'package:farmers_app/screens/splash.dart';
import 'package:farmers_app/screens/support.dart';
import 'package:farmers_app/screens/testimonials.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> get appRoutes => {
    '/splash': (context) => const SplashScreen(),
    '/intro': (context) => IntroScreen(),
    '/': (context) => const HomeScreen(),
    '/login': (context) => const LoginScreen(),
    '/auth': (context) => const AuthScreen(),
    '/forgotten_password': (context) => const ForgottenPasswordScreen(),
    '/reset_password': (context) => const ResetPasswordScreen(),
    '/register_type': (context) => const RegisterTypeScreen(),
    '/register': (context) => const RegisterScreen(),

    '/profile': (context) => const ProfileScreen(),
    '/communities': (context) => const CommunitiesScreen(),
    '/coverage': (context) => const CoverageScreen(),
    '/testimonials': (context) => const TestimonialsScreen(),
    '/faqs': (context) => const FaqsScreen(),
    '/about': (context) => const AboutScreen(),
    '/support': (context) => const SupportScreen()
};