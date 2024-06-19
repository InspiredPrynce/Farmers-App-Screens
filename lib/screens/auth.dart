import 'package:farmers_app/widgets/kImages.dart';
import 'package:farmers_app/widgets/kThemeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthScreen extends StatelessWidget {
    const AuthScreen({super.key});

    @override
    Widget build(BuildContext context) {

        final size = MediaQuery.of(context).size;
        final theme = Theme.of(context);

        return Scaffold(
            body: Center(
                child: Column(
                    children: [
                        SizedBox(
                            height: size.height * 0.5,
                            child: SvgPicture.asset(
                                "assets/svg/farmerAuth.svg",
                                height: 400,
                            ),
                        ),
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                decoration: getBoxDecoration(context).copyWith(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                    ),
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                        Image.asset(
                                            appIcon,
                                            height: 150,
                                        ),
                                        Text(
                                            "Welcome Back",
                                            style: theme.textTheme.headlineLarge!.copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300
                                            ),
                                        ),
                                        const SizedBox(height: 20),
                                        SizedBox(
                                            width: size.width * 0.8,
                                            child: Text(
                                                "Welcome to Farmers Market where your dreams come true",
                                                style: theme.textTheme.bodyLarge!.copyWith(
                                                    color: Colors.black,
                                                ),
                                                textAlign: TextAlign.center,
                                            ),
                                        ),
                                        const SizedBox(height: 40),
                                        _buildButtons(
                                            context,
                                            icon: FontAwesomeIcons.lock,
                                            text: "Login To Your Account",
                                            color: primaryColor,
                                            onTap: (){
                                                Navigator.pushNamed(context, "/login");
                                            }
                                        ),
                                        const SizedBox(height: 20),
                                        _buildButtons(
                                            context,
                                            icon: FontAwesomeIcons.user,
                                            text: "Create An Account",
                                            color: priceColor.withAlpha(200),
                                            onTap: (){
                                                Navigator.pushNamed(context, "/register");
                                            }
                                        )
                                    ],
                                ),
                            ),
                        ),
                    ],
                )
            ),
        );
    }

    _buildButtons(context, {icon, text, color, onTap}){

        final size = MediaQuery.of(context).size;
        final theme = Theme.of(context);

        return GestureDetector(
            onTap: onTap,
            child: Container(
                alignment: Alignment.center,
                width: size.width * 0.6,
                height: 50,
                decoration: getBoxDecoration(context).copyWith(
                    color: color
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        FaIcon(icon, size: 18),
                        const SizedBox(width: 10),
                        Text(text, style: theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500))
                    ]
                )
            )
        );
    }
}
