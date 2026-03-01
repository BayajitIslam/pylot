import 'package:flutter/material.dart';
import 'package:pylot/core/constant/app_images.dart';
import 'package:pylot/core/constant/app_strings.dart';
import 'package:pylot/core/theme/app_pallete.dart';
import 'package:pylot/core/utils/screen_size.dart';
import 'package:pylot/features/onboarding/presentation/widgets/progress_button.dart';
import 'package:pylot/features/onboarding/presentation/widgets/slide_five.dart';
import 'package:pylot/features/onboarding/presentation/widgets/slide_for.dart';
import 'package:pylot/features/onboarding/presentation/widgets/slide_one.dart';
import 'package:pylot/features/onboarding/presentation/widgets/slide_three.dart';
import 'package:pylot/features/onboarding/presentation/widgets/slide_two.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  //All Pages
  final List<Widget> pagesList = [
    const SlideOne(),
    const SlideTwo(),
    const SlideThree(),
    const SlideFor(),
    const SlideFive(),
  ];

  //Cureent index
  int currentIndex = 0;

  //Page Controller
  late final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  //Next Page
  void nextPages() {
    if (currentIndex < pagesList.length - 1) {
      setState(() => currentIndex++);
      _pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    } else {
      debugPrint('Navigate to Home');
      // Navigate to Home
      // Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.onboardingBg),
            fit: BoxFit.cover,
          ),
        ),

        //Content
        child: SafeArea(
          child: Column(
            children: [
              //SKIP Button
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: context.spacing24),
                  child: Text(
                    AppStrings.skip,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppPallete.blackColor,
                    ),
                  ),
                ),
              ),

              //All Pages
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) => pagesList[index],
                  itemCount: pagesList.length,
                  controller: _pageController,
                ),
              ),
            ],
          ),
        ),
      ),

      //Floating action button - Next
      floatingActionButton: ProgressButton(
        progress: (currentIndex + 1) / pagesList.length,
        onTap: () {
          nextPages();
        },
      ),
    );
  }
}
