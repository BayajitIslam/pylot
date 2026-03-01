import 'package:flutter/material.dart';
import 'package:pylot/core/constant/app_images.dart';
import 'package:pylot/core/constant/app_strings.dart';
import 'package:pylot/core/theme/app_pallete.dart';

class SlideFor extends StatelessWidget {
  const SlideFor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Title
                  Text(
                    AppStrings.gentleReminders,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  //Description
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleLarge,

                      children: [
                        const TextSpan(text: 'Leave-by '),
                        //Highlight
                        const TextSpan(
                          text: 'alerts ',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: AppPallete.primaryColor,
                            decorationThickness: 3,
                          ),
                        ),
                        const TextSpan(text: 'when \nyou need them'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Image
          Image.asset(AppImages.sliderTwo),
        ],
      ),
    );
  }
}
