import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task_management/Routes/routes.dart';
import 'package:task_management/Utils/app_colors.dart';
import 'package:task_management/Utils/app_constants.dart';
import 'package:task_management/Utils/app_icons.dart';

import '../../Widgets/custom_button.dart';
import '../../Widgets/titled_textField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign in to your account",
                  style: TextStyle(fontSize: 14, color: AppColors.GREY_COLOR),
                ),
                const SizedBox(height: 50),
                TitledTextField(
                  title: 'Username / Email',
                  hintText: 'Enter Username / Email here',
                ),
                TitledTextField(
                  obscureText: true,
                  title: 'Password',
                  hintText: 'Enter password here',
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(AppIcons.eye_icon),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Forgot Password ?",
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  onPress: () {
                    Get.toNamed(Routes.mainScreen);
                  },
                  height: 56,
                  title: Text(
                    'Login',
                    style: TextStyle(fontSize: 16),
                  ),
                  backgroundColor: AppColors.NEUTRAL_COLOR,
                  foregroundColor: AppColors.WHITE_COLOR,
                  borderSideColor: AppColors.GREY_COLOR,
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    "Or login with account",
                    style: TextStyle(color: AppColors.GREY_COLOR),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  onPress: () {},
                  height: 56,
                  title: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: AppConstants.mediaWidth(context) / 1.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(AppIcons.google_icon),
                            Text(
                              'Continue with Google',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  borderSideColor: AppColors.GREY_COLOR,
                  backgroundColor: AppColors.WHITE_COLOR,
                  foregroundColor: AppColors.BLACK_COLOR,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  onPress: () {},
                  height: 56,
                  title: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: AppConstants.mediaWidth(context) / 1.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(AppIcons.facebook_icon),
                            Text(
                              'Continue with Facebook',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  borderSideColor: AppColors.GREY_COLOR,
                  backgroundColor: AppColors.WHITE_COLOR,
                  foregroundColor: AppColors.BLACK_COLOR,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  onPress: () {},
                  height: 56,
                  title: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: AppConstants.mediaWidth(context) / 1.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(AppIcons.apple_icon),
                            Text(
                              'Continue with Apple',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  borderSideColor: AppColors.GREY_COLOR,
                  backgroundColor: AppColors.WHITE_COLOR,
                  foregroundColor: AppColors.BLACK_COLOR,
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont’t have an account?",
                      style: TextStyle(color: AppColors.GREY_COLOR),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Register Here",
                        style: TextStyle(
                            color: AppColors.BLACK_COLOR,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
