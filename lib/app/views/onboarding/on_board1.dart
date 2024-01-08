import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mat_dummy/app/widgets/gradient.dart';
import 'package:mat_dummy/utils/consts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: background_primary,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: const [
              OnBoardingPage(
                imagePath: "assets/hand.jpg",
                title: "Find Your \nSpecial Someone",
                description:
                    "Discover lasting love on our matrimony app.",
              ),
              OnBoardingPage(
                imagePath: "assets/hand2.jpg",
                title: "Discover Your \nPerfect Match with Ease",
                description:
                    "Unlock the door to lasting love stories.",
              ),
              OnBoardingPage(
                imagePath: "assets/hand4.jpg",
                title: "Make Finding Love\nan Exciting Adventure",
                description:
                    "Our matrimony app fosters lasting relationships.",
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: WormEffect(
                    dotColor: iconColors,
                    activeDotColor: main_color,
                    dotHeight: 5,
                    dotWidth: 15,
                  ),
                ),
                Text(
                  'Skip',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const OnBoardingPage({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: GradientColor(size: size),
        ),
        Positioned(
          left: 10,
          bottom: size.height * 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                description,
                maxLines: 4,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
