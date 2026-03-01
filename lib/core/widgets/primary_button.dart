import 'package:flutter/material.dart';
import 'package:pylot/core/theme/app_pallete.dart';
import 'package:pylot/core/widgets/app_loader.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonName;
  final bool isLoading;
  final void Function()? onPress;
  const PrimaryButton({
    super.key,
    required this.buttonName,
    this.isLoading = false,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: AppPallete.primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),

        child: isLoading
            ? AppLoader()
            : Text(
                buttonName,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: AppPallete.whiteColor,
                ),
              ),
      ),
    );
  }
}
