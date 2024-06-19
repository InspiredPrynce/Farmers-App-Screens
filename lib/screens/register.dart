import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/input.dart';
import '../widgets/kImages.dart';
import '../widgets/kThemeData.dart';

class RegisterScreen extends StatelessWidget {
    const RegisterScreen({super.key});

    @override
    Widget build(BuildContext context) {

        final size = MediaQuery.of(context).size;
        final theme = Theme.of(context);

        return Scaffold(
            appBar: AppBar(),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    SizedBox(
                        height: size.height * 0.26,
                        child: Padding(
                            padding: const EdgeInsets.all(20.0).copyWith(
                                bottom: 0
                            ),
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
                                    const SizedBox(height: 20),
                                    SizedBox(
                                        width: size.width * 0.8,
                                        child: Text(
                                            "Create Your Account",
                                            style: theme.textTheme.headlineLarge!.copyWith(
                                                fontWeight: FontWeight.w200
                                            )
                                        )
                                    ),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                        width: size.width * 0.9,
                                        child: Text(
                                            "Fill the form below to create an account and it will take you just a few minutes...",
                                            style: theme.textTheme.bodyLarge!.copyWith(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w100
                                            )
                                        )
                                    ),
                                ],
                            ),
                        ),
                    ),
                    const Spacer(),
                    Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: getBoxDecoration(context).copyWith(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30)
                            )
                        ),
                        child: Column(
                            children: [
                                CustomInput().buildInput("Your First Name", FontAwesomeIcons.user),
                                CustomInput().buildInput("Your Last Name", FontAwesomeIcons.user),
                                CustomInput().buildInput("Your Email Name", FontAwesomeIcons.envelope),
                                CustomInput().buildInput("Your Phone Number", FontAwesomeIcons.phone),
                                const SizedBox(height: 10),
                                GestureDetector(
                                    onTap: (){
                                        Navigator.pushNamed(context, "/");
                                    },
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
                                                Text("Sign Up", style: theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500, color: Colors.white))
                                            ]
                                        )
                                    )
                                ),
                                const SizedBox(height: 10),
                                Center(
                                    child: GestureDetector(
                                        onTap: (){
                                            Navigator.pushNamed(context, "/login");
                                        },
                                        child: const Text(
                                            "Already have an account? Click here to login",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.grey)
                                        ),
                                    )
                                )
                            ],
                        ),
                    ),
                ]
            ),
        );
    }
}
