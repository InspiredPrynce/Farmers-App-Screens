import 'package:dotted_border/dotted_border.dart';
import 'package:farmers_app/widgets/kThemeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/drawer.dart';
import '../widgets/kImages.dart';

class HomeScreen extends StatefulWidget {
    const HomeScreen({super.key});

    @override
    State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    @override
    Widget build(BuildContext context) {

        final size = MediaQuery.of(context).size;
        final theme = Theme.of(context);

        return Scaffold(
            appBar: _buildAppBar(context),
            key: _scaffoldKey,
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(
                                        "Welcome",
                                        style: theme.textTheme.bodyMedium!.copyWith(
                                            color: Colors.grey
                                        )
                                    ),
                                    Text(
                                        "Okafor Adebayo Ahmed",
                                        style: theme.textTheme.headlineSmall!.copyWith(
                                            fontWeight: FontWeight.w300
                                        )
                                    )
                                ]
                            ),
                            const SizedBox(height: 20),
                            Container(
                                height: size.height * 0.24,
                                padding: const EdgeInsets.all(15),
                                decoration: getBoxDecoration(context).copyWith(
                                    image: const DecorationImage(
                                        image: AssetImage("assets/patterns/patternLeft.png"),
                                        fit: BoxFit.cover
                                    ),
                                    color: Colors.black.withOpacity(0.7)
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                Row(
                                                    children: [
                                                        Container(
                                                            width: 30,
                                                            height: 30,
                                                            decoration: getBoxDecoration(context).copyWith(
                                                                borderRadius: BorderRadius.circular(15)
                                                            ),
                                                            child: const Icon(FontAwesomeIcons.wallet, size: 15),
                                                        ),
                                                        const SizedBox(width: 10),
                                                        Text(
                                                            "My Wallet",
                                                            style: theme.textTheme.bodyLarge!.copyWith(
                                                                fontWeight: FontWeight.w500,
                                                                color: Colors.white
                                                            )
                                                        )
                                                    ],
                                                ),
                                                GestureDetector(
                                                    onTap: (){},
                                                    child: Container(
                                                        width: 50,
                                                        height: 20,
                                                        alignment: Alignment.center,
                                                        decoration: getBoxDecoration(context),
                                                        child: Text(
                                                            'View',
                                                            style: theme.textTheme.bodySmall!.copyWith(
                                                                fontWeight: FontWeight.w500
                                                            )
                                                        )
                                                    )
                                                )
                                            ]
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                Text(
                                                    "Total Balance",
                                                    textAlign: TextAlign.start,
                                                    style: theme.textTheme.bodyMedium!.copyWith(
                                                        color: Colors.white
                                                    ),
                                                ),
                                                Text(
                                                    "Eligible for withdrawal",
                                                    textAlign: TextAlign.start,
                                                    style: theme.textTheme.bodySmall!.copyWith(
                                                        color: secondaryColor
                                                    )
                                                )
                                            ]
                                        ),
                                        const SizedBox(height: 5),
                                        Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text(
                                                    "NGN 30,678.90",
                                                    textAlign: TextAlign.start,
                                                    style: theme.textTheme.headlineMedium!.copyWith(
                                                        color: priceColor
                                                    )
                                                ),
                                                Text(
                                                    "+ NGN 26,500 in the last 30 days",
                                                    textAlign: TextAlign.start,
                                                    style: theme.textTheme.bodySmall!.copyWith(
                                                        color: Colors.greenAccent
                                                    )
                                                )
                                            ]
                                        ),
                                        const SizedBox(height: 15),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                GestureDetector(
                                                    onTap: (){},
                                                    child: Container(
                                                        width: size.width * 0.4,
                                                        height: 35,
                                                        alignment: Alignment.center,
                                                        decoration: getBoxDecoration(context).copyWith(
                                                            color: priceColor
                                                        ),
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                                const Icon(FontAwesomeIcons.bank, size: 15),
                                                                const SizedBox(width: 5),
                                                                Text(
                                                                    'Withdraw To Bank',
                                                                    style: theme.textTheme.bodySmall!.copyWith(
                                                                        fontWeight: FontWeight.w500,
                                                                    )
                                                                )
                                                            ]
                                                        )
                                                    )
                                                ),
                                                GestureDetector(
                                                    onTap: (){},
                                                    child: Container(
                                                        width: size.width * 0.4,
                                                        height: 35,
                                                        alignment: Alignment.center,
                                                        decoration: getBoxDecoration(context),
                                                        child: Text(
                                                            'Transaction History',
                                                            style: theme.textTheme.bodySmall!.copyWith(
                                                                fontWeight: FontWeight.w500
                                                            )
                                                        )
                                                    )
                                                )
                                            ],
                                        )
                                    ],
                                ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    Container(
                                        width: size.width * 0.45,
                                        height: 50,
                                        decoration: getBoxDecoration(context),
                                        alignment: Alignment.center,
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                SvgPicture.asset(
                                                    "assets/svg/product.svg",
                                                    width: 30
                                                ),
                                                const SizedBox(width: 8),
                                                const Text("Manage Products")
                                            ],
                                        ),
                                    ),
                                    Container(
                                        width: size.width * 0.45,
                                        height: 50,
                                        decoration: getBoxDecoration(context),
                                        alignment: Alignment.center,
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                SvgPicture.asset(
                                                    "assets/svg/farm.svg",
                                                    width: 30
                                                ),
                                                const SizedBox(width: 8),
                                                const Text("Manage Farms")
                                            ],
                                        ),
                                    )
                                ],
                            ),
                            const SizedBox(height: 20),
                            _buildSectionTitle(context: context, text: "Incoming Funds", sideColor: Colors.grey),
                            Container(
                                height: 70,
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                decoration: getBoxDecoration(context).copyWith(
                                    gradient: const LinearGradient(
                                        colors: [Color(0xff001510), Color(0xff22a225)],
                                        stops: [0.05, 1],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight
                                    )
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                                Container(
                                                    width: 40,
                                                    height: 40,
                                                    alignment: Alignment.center,
                                                    decoration: getBoxDecoration(context).copyWith(
                                                        borderRadius: BorderRadius.circular(40),
                                                        color: Colors.orange
                                                    ),
                                                    child: const Icon(FontAwesomeIcons.clock, size: 18, color: Colors.white)
                                                ),
                                                const SizedBox(width: 10),
                                                Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                        Text(
                                                            "NGN 30,678.90",
                                                            textAlign: TextAlign.start,
                                                            style: theme.textTheme.headlineSmall!.copyWith(
                                                                color: Colors.white
                                                            )
                                                        ),
                                                        Text(
                                                            "From 5 Pending Orders",
                                                            textAlign: TextAlign.start,
                                                            style: theme.textTheme.bodySmall!.copyWith(
                                                                color: Colors.greenAccent
                                                            )
                                                        )
                                                    ]
                                                )
                                            ]
                                        ),
                                        GestureDetector(
                                            onTap: (){},
                                            child: const Icon(FontAwesomeIcons.arrowRightLong, color: Colors.white)
                                        )
                                    ],
                                ),
                            ),
                            const SizedBox(height: 20),
                            _buildSectionTitle(context: context, text: "New Orders", sideColor: primaryColor),
                            buildOrderCard(size, context, theme),
                            buildOrderCard(size, context, theme),
                            buildOrderCard(size, context, theme),
                        ]
                    )
                )
            ),
            bottomNavigationBar: CustomBottomNavigationBar().buildBottomNavigation(context, index: 0),
            drawer: FancyDrawer(),
        );
    }

    ClipRRect buildOrderCard(Size size, BuildContext context, ThemeData theme) {
        return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: DottedBorder(
                color: Colors.grey,
                strokeWidth: 2.0,
                dashPattern: const [2.0, 2.0],
                child: Container(
                    height: size.height * 0.11,
                    decoration: getBoxDecoration(context),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Container(
                                width: size.width * 0.15,
                                decoration: getBoxDecoration(context).copyWith(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                    )
                                ),
                                alignment: Alignment.center,
                                child: const Icon(FontAwesomeIcons.fileInvoice, color: Colors.grey),
                            ),
                            Container(
                                padding: const EdgeInsets.all(8.0),
                                width: size.width * 0.6,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text(
                                            "Order #4232899",
                                            style: theme.textTheme.bodyMedium!.copyWith(
                                                fontWeight: FontWeight.w600
                                            )
                                        ),
                                        Text(
                                            "10kg of fresh tomatoes produce has been ordered",
                                            style: theme.textTheme.bodySmall!.copyWith(
                                            ),
                                            overflow: TextOverflow.clip,
                                            maxLines: 3
                                        ),
                                        const SizedBox(height: 7),
                                        Text(
                                            "Wed 3rd July, 2024 8:10:11 AM",
                                            style: theme.textTheme.bodySmall!.copyWith(
                                                fontStyle: FontStyle.italic,
                                                color: Colors.grey
                                            )
                                        )
                                    ],
                                ),
                            ),
                            Container(
                                width: size.width * 0.15,
                                decoration: getBoxDecoration(context).copyWith(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                    )
                                ),
                                alignment: Alignment.center,
                                child: const Icon(FontAwesomeIcons.arrowRight, color: Colors.grey),
                            )
                        ],
                    ),
                ),
            ),
        );
    }

    Column _buildSectionTitle({required context, required text, required sideColor}) {
        final theme = Theme.of(context);
        final settingsBox = Hive.box('settings');

        bool isDarkMode = settingsBox.get('isDarkMode', defaultValue: true);

        return Column(
            children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Container(
                            width: 30,
                            height: 5,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: getBoxDecoration(context).copyWith(
                                borderRadius: BorderRadius.circular(10),
                                color: sideColor
                            )
                        ),
                        Text(
                            text,
                            style: theme.textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                                color: isDarkMode ? Colors.white : Colors.black
                            )
                        )
                    ]
                ),
                const SizedBox(height: 10)
            ]
        );
    }

    AppBar _buildAppBar(context){
        final theme = Theme.of(context);
        return AppBar(
            title: Row(
                children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                            appIcon,
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                        ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(
                                'Farmers Market',
                                style: theme.textTheme.displaySmall!.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600
                                ),
                            ),
                            Text(
                                'Manage your farm here',
                                style: theme.textTheme.bodySmall
                            )
                        ]
                    )
                ]
            ),
            leading: IconButton(
                icon: const Icon(FontAwesomeIcons.barsStaggered, color: primaryColor),
                onPressed: () =>  _scaffoldKey.currentState!.openDrawer(),
            ),
            actions: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        children: [
                            GestureDetector(
                                onTap: (){},
                                child: Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: getBoxDecoration(context).copyWith(
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Container(
                                                width: 8,
                                                height: 8,
                                                decoration: getBoxDecoration(context).copyWith(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.circular(8)
                                                ),
                                            ),
                                            const Icon(FontAwesomeIcons.bell, size: 15),
                                        ],
                                    )
                                )
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                                onTap: (){},
                                child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: getBoxDecoration(context).copyWith(
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    child: ClipOval(child: Image.asset("assets/user.jpg"))
                                )
                            )
                        ]
                    ),
                )
            ],
        );
    }
}
