import 'package:farmers_app/widgets/kImages.dart';
import 'package:farmers_app/widgets/kThemeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class RegisterTypeScreen extends StatelessWidget {
    const RegisterTypeScreen({super.key});

    @override
    Widget build(BuildContext context) {

        final size = MediaQuery.of(context).size;
        final theme = Theme.of(context);

        return Scaffold(
            appBar: AppBar(),
            body: Padding(
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
                                "Select Your Mode Of Farming",
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
                        const Spacer(),
                        Text(
                            "I Am A",
                            style: theme.textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.w200,
                                color: Colors.grey
                            )
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                            onTap: (){
                                Navigator.pushNamed(context, "/register");
                            },
                            child: Container(
                                width: size.width,
                                padding: const EdgeInsets.all(10),
                                height: 130,
                                alignment: Alignment.center,
                                decoration: getBoxDecoration(context),
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        SizedBox(
                                            width: size.width * 0.2,
                                            child: AspectRatio(
                                                aspectRatio: 1.2,
                                                child: SvgPicture.asset(
                                                    "assets/svg/farmAuth.svg",
                                                    fit: BoxFit.cover
                                                )
                                            )
                                        ),
                                        const SizedBox(width: 20),
                                        Expanded(
                                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    Text(
                                                        "A Farmer",
                                                        style: theme.textTheme.headlineSmall!.copyWith(
                                                            fontWeight: FontWeight.w200,
                                                            color: priceColor
                                                        )
                                                    ),
                                                    const SizedBox(height: 5),
                                                    Text(
                                                        "I own a farm land and I either rear animals and grow crops.",
                                                        style: theme.textTheme.bodyLarge!.copyWith(
                                                            color: Colors.grey,
                                                            fontWeight: FontWeight.w100
                                                        ),
                                                        maxLines: null
                                                    )
                                                ]
                                            )
                                        )
                                    ]
                                )
                            ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                            onTap: (){
                                Navigator.pushNamed(context, "/register");
                            },
                            child: Container(
                                width: size.width,
                                padding: const EdgeInsets.all(10),
                                height: 130,
                                alignment: Alignment.center,
                                decoration: getBoxDecoration(context),
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        SizedBox(
                                            width: size.width * 0.2,
                                            child: AspectRatio(
                                                aspectRatio: 1.2,
                                                child: SvgPicture.asset(
                                                    "assets/svg/distributorAuth.svg",
                                                    fit: BoxFit.cover
                                                )
                                            )
                                        ),
                                        const SizedBox(width: 20),
                                        Expanded(
                                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    Text(
                                                        "A Distributor",
                                                        style: theme.textTheme.headlineSmall!.copyWith(
                                                            fontWeight: FontWeight.w200,
                                                            color: priceColor
                                                        )
                                                    ),
                                                    const SizedBox(height: 5),
                                                    Text(
                                                        "I distribute farm produce and I own a store or warehouse.",
                                                        style: theme.textTheme.bodyLarge!.copyWith(
                                                            color: Colors.grey,
                                                            fontWeight: FontWeight.w100
                                                        ),
                                                        maxLines: null
                                                    )
                                                ]
                                            )
                                        )
                                    ]
                                )
                            ),
                        )
                    ]
                )
            )
        );
    }
}
