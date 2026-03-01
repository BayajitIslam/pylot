import 'package:flutter/material.dart';
import 'package:pylot/core/constant/app_images.dart';
import 'package:pylot/core/constant/app_strings.dart';
import 'package:pylot/core/theme/app_pallete.dart';
import 'package:pylot/core/utils/screen_size.dart';

class SlideFive extends StatelessWidget {
  const SlideFive({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Image
          Image.asset(AppImages.sliderThree),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Title
                  Text(
                    AppStrings.ready,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  //Description
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleLarge,

                      children: [
                        const TextSpan(text: 'Get started planning\n'),
                        //Highlight
                        const TextSpan(
                          text: 'your perfect day',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: AppPallete.primaryColor,
                            decorationThickness: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Start Exploring!
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: context.spacing32,
                left: context.spacing24,
              ),
              child: Text(
                AppStrings.startExploring,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
