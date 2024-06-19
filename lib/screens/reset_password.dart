import 'package:farmers_app/widgets/dotted_divider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/input.dart';
import '../widgets/kImages.dart';
import '../widgets/kThemeData.dart';

class ResetPasswordScreen extends StatelessWidget {
    const ResetPasswordScreen({super.key});

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
                                        "Forgotten Password",
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
                                    const Text("Enter the 6 digit code that you received"),
                                    const SizedBox(height: 5),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: List.generate(6, (index) =>
                                            CustomInput().buildOTPTextField(index, context)),
                                    ),
                                    const SizedBox(height: 5),
                                    const DottedDivider(width: 3, opacity: 0.4),
                                    const SizedBox(height: 5),
                                    const Text("Enter Your Password"),
                                    const TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            hintText: "***",
                                            prefixIcon: Icon(FontAwesomeIcons.lock, color: priceColor)
                                        )
                                    ),
                                    const SizedBox(height: 20),
                                    const Text("Confirm Your Password"),
                                    const TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            hintText: "***",
                                            prefixIcon: Icon(FontAwesomeIcons.lock, color: priceColor)
                                        )
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
                                                    const FaIcon(FontAwesomeIcons.lockOpen, size: 18, color: Colors.white),
                                                    const SizedBox(width: 10),
                                                    Text("Reset Password", style: theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500, color: Colors.white))
                                                ]
                                            )
                                        )
                                    )
                                ]
                            )
                        )
                    )
                ]
            )
        );
    }
}
