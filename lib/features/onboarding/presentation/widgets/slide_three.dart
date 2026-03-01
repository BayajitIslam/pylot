import 'package:flutter/material.dart';
import 'package:pylot/core/constant/app_images.dart';
import 'package:pylot/core/constant/app_strings.dart';
import 'package:pylot/core/theme/app_pallete.dart';

class SlideThree extends StatelessWidget {
  const SlideThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    AppStrings.smartTravel,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  //Description
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleLarge,

                      children: [
                        const TextSpan(text: 'Never be late with live\n'),
                        //Highlight
                        const TextSpan(
                          text: 'ETAs',
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
        ],
      ),
    );
  }
}
