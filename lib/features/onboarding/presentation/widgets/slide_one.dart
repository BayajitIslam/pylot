import 'package:flutter/material.dart';
import 'package:pylot/core/constant/app_images.dart';
import 'package:pylot/core/constant/app_strings.dart';
import 'package:pylot/core/theme/app_pallete.dart';
import 'package:pylot/core/utils/screen_size.dart';

class SlideOne extends StatelessWidget {
  const SlideOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Image
          Image.asset(AppImages.sliderOne),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.spacing16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title
                Text(
                  AppStrings.welcometopylot,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                //Description
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleLarge,

                    children: [
                      const TextSpan(text: 'Introduction to Pylot as your '),
                      //Highlight
                      const TextSpan(
                        text: 'intelligent scheduling ',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppPallete.primaryColor,
                          decorationThickness: 3,
                        ),
                      ),
                      const TextSpan(text: 'assistant'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
