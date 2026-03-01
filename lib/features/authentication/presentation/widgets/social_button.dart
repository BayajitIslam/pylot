import 'package:flutter/material.dart';
import 'package:pylot/core/theme/app_pallete.dart';
import 'package:pylot/core/utils/screen_size.dart';

class SocialButton extends StatelessWidget {
  final String buttonName;
  final void Function()? ontap;
  const SocialButton({super.key, required this.buttonName, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: AppPallete.transparentColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: AppPallete.greyColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Icon
            Icon(Icons.apple),

            //Text
            SizedBox(height: context.spacing12),
            Text(
              buttonName,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppPallete.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
