import 'package:farmers_app/screens/home.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
    const OnboardingScreen({super.key});

    @override
    _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
    final PageController _pageController = PageController();
    int _currentIndex = 0;

    final List<Map<String, String>> _onboardingData = [
        {
            "image": "assets/onboarding/1.jpg",
            "title": "Welcome to Farmers Market",
            "description": "Manage your farm efficiently and effectively."
        },
        {
            "image": "assets/onboarding/2.jpg",
            "title": "Track Your Progress",
            "description": "Monitor the growth and productivity of your crops."
        },
        {
            "image": "assets/onboarding/3.jpg",
            "title": "Stay Informed",
            "description": "Receive the latest updates and alerts."
        }
    ];

    void _onPageChanged(int index) {
        setState(() {
            _currentIndex = index;
        });
    }

    void _skip() {
        Navigator.pushNamed(context, "/login");
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Stack(
                children: [
                    PageView.builder(
                        controller: _pageController,
                        onPageChanged: _onPageChanged,
                        itemCount: _onboardingData.length,
                        itemBuilder: (context, index) => OnboardingPage(
                            image: _onboardingData[index]['image']!,
                            title: _onboardingData[index]['title']!,
                            description: _onboardingData[index]['description']!,
                        ),
                    ),
                    Positioned(
                        top: 40.0,
                        right: 20.0,
                        child: TextButton(
                            onPressed: _skip,
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF028652)),
                            ),
                            child: const Text(
                                'Skip',
                                style: TextStyle(
                                    color: Colors.white,
                                ),
                            ),
                        ),
                    ),
                    Positioned(
                        bottom: 20.0,
                        left: 0.0,
                        right: 0.0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(_onboardingData.length, (index) => buildDot(index)),
                        )
                    )
                ]
            )
        );
    }

    Widget buildDot(int index) {
        return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: 5,
            width: _currentIndex == index ? 60 : 30,
            margin: const EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
                color: _currentIndex == index ? const Color(0xFF027330) : Colors.grey,
                borderRadius: BorderRadius.circular(5)
            )
        );
    }
}

class OnboardingPage extends StatelessWidget {
    final String image;
    final String title;
    final String description;

    const OnboardingPage({
        super.key,
        required this.image,
        required this.title,
        required this.description
    });

    @override
    Widget build(BuildContext context) {
        return Stack(
            children: [
                Image(
                    image: AssetImage(image),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover
                ),
                Positioned(
                    bottom: 40,
                    left: 10,
                    right: 10,
                    child: Container(
                        padding: const EdgeInsets.all(24.0),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text(
                                    title,
                                    style: Theme.of(context).textTheme.headlineMedium
                                ),
                                const SizedBox(height: 20),
                                Text(
                                    description,
                                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[400]
                                    )
                                )
                            ]
                        )
                    )
                )
            ]
        );
    }
}