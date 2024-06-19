import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';

import 'dotted_divider.dart';
import 'kImages.dart';
import 'kThemeData.dart';

class FancyDrawer extends StatelessWidget {
    FancyDrawer({super.key});

    final settingsBox = Hive.box('settings');

    @override
    Widget build(BuildContext context) {

        final theme = Theme.of(context);
        bool isDarkMode = settingsBox.get('isDarkMode', defaultValue: true);

        return Drawer(
            child: ListView(
                padding: EdgeInsets.zero,
                children: [
                    DrawerHeader(
                        decoration: getBoxDecoration(context),
                        child: Column(
                            children: [
                                Image.asset(
                                    appIcon,
                                    width: 80,
                                    height: 80,
                                ),
                                Text(
                                    'Farmers Market',
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        fontWeight: FontWeight.bold
                                    ),
                                ),
                                Text('v1.0.0', style: theme.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold)),
                                const Spacer(),
                                Text.rich(
                                    TextSpan(
                                        text: 'A product of ',
                                        style: theme.textTheme.bodySmall,
                                        children: <TextSpan>[
                                            TextSpan(
                                                text: 'The Pragmatic Approach',
                                                style: theme.textTheme.bodySmall!.copyWith(
                                                    color: isDarkMode ? secondaryColor : primaryColor
                                                ),
                                            ),
                                        ],
                                    )
                                ),
                            ],
                        ),
                    ),
                    ListTile(
                        leading: const FaIcon(FontAwesomeIcons.shop, size: 20),
                        title: const Text('Shop For Items'),
                        onTap: () {
                            Navigator.pushNamed(context, '/');
                        },
                    ),
                    ListTile(
                        leading: const FaIcon(FontAwesomeIcons.userGear, size: 20),
                        title: const Text('My Profile'),
                        onTap: () {
                            Navigator.pushNamed(context, '/profile');
                        },
                    ),
                    ListTile(
                        leading: const FaIcon(FontAwesomeIcons.kitchenSet, size: 20),
                        title: const Text('Kitchens / Recipes'),
                        onTap: () {
                            Navigator.pushNamed(context, '/recipes');
                        },
                    ),
                    ListTile(
                        leading: const FaIcon(FontAwesomeIcons.blog, size: 20),
                        title: const Text('News'),
                        onTap: () {
                            Navigator.pushNamed(context, '/news');
                        },
                    ),
                    ListTile(
                        leading: const FaIcon(FontAwesomeIcons.usersBetweenLines),
                        title: const Text('Communities'),
                        onTap: () {
                            Navigator.pushNamed(context, '/communities');
                        },
                    ),
                    ListTile(
                        leading: const FaIcon(FontAwesomeIcons.globe),
                        title: const Text('Our Coverage'),
                        onTap: () {
                            Navigator.pushNamed(context, '/coverage');
                        },
                    ),
                    ListTile(
                        leading: const FaIcon(FontAwesomeIcons.commentDots),
                        title: const Text('Our Reviews'),
                        onTap: () {
                            Navigator.pushNamed(context, '/testimonials');
                        },
                    ),
                    const DottedDivider(width: 3, opacity: 0.7),
                    SwitchListTile(
                        title: Text(isDarkMode ? 'Light Mode' : 'Dark Mode'),
                        secondary: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
                        value: isDarkMode,
                        onChanged: (value) {
                            settingsBox.put('isDarkMode', value);
                        },
                    ),
                    const DottedDivider(width: 3, opacity: 0.7),
                    ListTile(
                        leading: const Icon(Icons.question_answer),
                        title: const Text('FAQs'),
                        onTap: () {
                            Navigator.pushNamed(context, '/faqs');
                        }
                    ),
                    ListTile(
                        leading: const Icon(Icons.info),
                        title: const Text('About'),
                        onTap: () {
                            Navigator.pushNamed(context, '/about');
                        },
                    ),
                    ListTile(
                        leading: const Icon(Icons.support_agent_outlined),
                        title: const Text('Support'),
                        onTap: () {
                            Navigator.pushNamed(context, '/support');
                        },
                    ),
                    const DottedDivider(width: 3, opacity: 0.7),
                    Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                _buildSocialIcons(context, FontAwesomeIcons.facebook, isDarkMode, (){}),
                                _buildSocialIcons(context, FontAwesomeIcons.twitter, isDarkMode, (){}),
                                _buildSocialIcons(context, FontAwesomeIcons.instagram, isDarkMode, (){}),
                                _buildSocialIcons(context, FontAwesomeIcons.tiktok, isDarkMode, (){}),
                            ],
                        ),
                    )
                ],
            ),
        );
    }

    GestureDetector _buildSocialIcons(BuildContext context, IconData icon, bool isDarkMode, onTap) {
        return GestureDetector(
            onTap: onTap!,
            child: Container(
                width: 30,
                height: 30,
                decoration: getBoxDecoration(context).copyWith(
                    color: isDarkMode ? Colors.black.withOpacity(0.9) : Colors.grey.withOpacity(0.9),
                ),
                child: Center(
                    child: FaIcon(
                        icon,
                        color: isDarkMode ? Colors.white : Colors.black,
                        size: 12
                    )
                ),
            ),
        );
    }
}
