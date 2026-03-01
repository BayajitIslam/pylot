import 'package:flutter/material.dart';
import 'package:pylot/core/constant/app_images.dart';
import 'package:pylot/core/constant/app_strings.dart';
import 'package:pylot/core/theme/app_pallete.dart';
import 'package:pylot/core/utils/screen_size.dart';

class SlideTwo extends StatelessWidget {
  const SlideTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.spacing24,
              vertical: context.spacing32,
            ),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Title
                  Text(
                    AppStrings.visualSchedule,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  //Description
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleLarge,

                      children: [
                        const TextSpan(text: 'See your day at a\n'),
                        //Highlight
                        const TextSpan(
                          text: 'glance ',
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
          SizedBox(height: context.spacing32),
          //Image
          Image.asset(AppImages.sliderTwo),
        ],
      ),
    );
  }
}
