import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mat_dummy/app/widgets/gradient.dart';
import 'package:mat_dummy/utils/consts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
                description: "This is the first page description.",
              ),
              OnBoardingPage(
                imagePath: "assets/hand2.jpg",
                title: "Find Your \nSpecial Someone",
                description: "This is the second page description.",
              ),
              OnBoardingPage(
                imagePath: "assets/hand3.jpg",
                title: "Find Your \nSpecial Someone",
                description: "This is the third page description.",
              ),
            ],
          ),
          Positioned(bottom: 0, child: GradientColor(size: size)),
          Positioned(
            bottom: 40,
            left: 20,
            right: 0,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect:const WormEffect(dotHeight: 5, dotWidth: 15),
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
          child: Padding(
            padding:  EdgeInsets.only(top: size.height * 0.5,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title,
                    style: GoogleFonts.poppins(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                const SizedBox(height: 20),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}
