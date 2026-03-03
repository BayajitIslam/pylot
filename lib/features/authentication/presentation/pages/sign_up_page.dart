import 'package:flutter/material.dart';
import 'package:pylot/core/constant/app_images.dart';
import 'package:pylot/core/constant/app_strings.dart';
import 'package:pylot/core/theme/app_pallete.dart';
import 'package:pylot/core/utils/screen_size.dart';
import 'package:pylot/core/widgets/primary_button.dart';
import 'package:pylot/features/authentication/presentation/pages/sign_in_page.dart';
import 'package:pylot/features/authentication/presentation/widgets/auth_field.dart';
import 'package:pylot/features/authentication/presentation/widgets/dotted_line_painter.dart';
import 'package:pylot/features/authentication/presentation/widgets/social_button.dart';

class SignUpPage extends StatelessWidget {
  //route
  static MaterialPageRoute<dynamic> route() =>
      MaterialPageRoute(builder: (context) => SignUpPage());

  //constructor
  SignUpPage({super.key});

  //controller
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _retypepasswordcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.spacing24),
          child: Column(
            children: [
              //App logo
              SizedBox(height: context.spacing16),
              Align(
                alignment: AlignmentGeometry.center,
                child: SizedBox(
                  height: 56,
                  width: 54,
                  child: Image.asset(AppImages.appIcon),
                ),
              ),

              //Sign in Text
              SizedBox(height: context.spacing24),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  AppStrings.signUp,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppPallete.primaryColor,
                  ),
                ),
              ),

              //Email TextField
              SizedBox(height: context.spacing24),
              AuthField(
                controller: _emailcontroller,
                lebel: AppStrings.emailaddress,
                hintText: AppStrings.exampleEmail,
              ),

              //Password TextField
              SizedBox(height: context.spacing24),
              AuthField(
                controller: _passwordcontroller,
                lebel: AppStrings.password,
                isObscure: true,
                isPassword: true,
                hintText: '**********',
              ),

              //rePassword TextField
              SizedBox(height: context.spacing24),
              AuthField(
                controller: _retypepasswordcontroller,
                lebel: AppStrings.password,
                isObscure: true,
                isPassword: true,
                hintText: '**********',
              ),

              //Error

              //Sign Up Button
              SizedBox(height: context.spacing24),
              PrimaryButton(buttonName: AppStrings.signUp),

              //accept terms
              SizedBox(height: context.spacing12),
              RichText(
                text: TextSpan(
                  text: AppStrings.acceptTerms,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppPallete.blackColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                  ),
                  children: [
                    TextSpan(
                      text: AppStrings.privacyPolicy,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppPallete.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),

              // --------- or ---------
              SizedBox(height: context.spacing16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //line
                  CustomPaint(
                    size: Size(context.cardWidth * 1.5, 1),
                    painter: DottedLinePainter(),
                  ),
                  //or
                  Text(
                    AppStrings.or,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppPallete.greyColor,
                    ),
                  ),
                  //line
                  CustomPaint(
                    size: Size(context.cardWidth * 1.5, 1),
                    painter: DottedLinePainter(),
                  ),
                ],
              ),

              // Continue with Apple
              SizedBox(height: context.spacing16),
              SocialButton(buttonName: AppStrings.signInWithApple),

              //Don't have an account
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.alreadyHaveAnAccount,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppPallete.blackColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, SignInPage.route());
                    },
                    child: Text(
                      AppStrings.signIn,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppPallete.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
