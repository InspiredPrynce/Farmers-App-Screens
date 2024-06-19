import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/input.dart';
import '../widgets/kImages.dart';
import '../widgets/kThemeData.dart';

class LoginScreen extends StatelessWidget {
    const LoginScreen({super.key});

    @override
    Widget build(BuildContext context) {

        final size = MediaQuery.of(context).size;
        final theme = Theme.of(context);

        return Scaffold(
            appBar: AppBar(),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Container(
                                    width: 80,
                                    height: 80,
                                    padding: const EdgeInsets.all(7),
                                    decoration: getBoxDecoration(context),
                                    child: Image.asset(
                                        appIcon,
                                        width: 80
                                    )
                                ),
                                const SizedBox(height: 50),
                                SizedBox(
                                    width: size.width * 0.8,
                                    child: Text(
                                        "Welcome Back",
                                        style: theme.textTheme.headlineLarge!.copyWith(
                                            fontWeight: FontWeight.w200
                                        )
                                    )
                                ),
                                const SizedBox(height: 20),
                                SizedBox(
                                    width: size.width * 0.9,
                                    child: Text(
                                        "Please enter your registered email or phone and your password to continue...",
                                        style: theme.textTheme.bodyLarge!.copyWith(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w100
                                        )
                                    )
                                ),
                            ],
                        ),
                    ),
                    const Spacer(),
                    Container(
                        width: size.width,
                        decoration: getBoxDecoration(context).copyWith(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30)
                            )
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    CustomInput().buildInput("Enter Your Email or Phone", FontAwesomeIcons.envelopeCircleCheck),
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                    const Text("Enter Your Password"),
                                                    GestureDetector(
                                                        onTap: (){
                                                            Navigator.pushNamed(context, "/forgotten_password");
                                                        },
                                                        child: const Text(
                                                            "Forgotten Password?",
                                                            style: TextStyle(color: priceColor)
                                                        )
                                                    )
                                                ]
                                            ),
                                            const SizedBox(height: 8),
                                            const TextField(
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                    hintText: "Click to type here",
                                                    prefixIcon: Icon(FontAwesomeIcons.lock, color: priceColor)
                                                )
                                            )
                                        ]
                                    ),
                                    const SizedBox(height: 20),
                                    GestureDetector(
                                        onTap: (){},
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: size.width,
                                            height: 50,
                                            decoration: getBoxDecoration(context).copyWith(color: primaryColor),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                    const FaIcon(FontAwesomeIcons.doorOpen, size: 18, color: Colors.white),
                                                    const SizedBox(width: 10),
                                                    Text("Sign In", style: theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500, color: Colors.white))
                                                ]
                                            )
                                        )
                                    ),
                                    const SizedBox(height: 20),
                                    Center(
                                        child: GestureDetector(
                                            onTap: (){
                                                Navigator.pushNamed(context, "/register_type");
                                            },
                                            child: const Text(
                                                "Don't have an account? Click here to sign up",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.grey)
                                            ),
                                        )
                                    )
                                ],
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}
