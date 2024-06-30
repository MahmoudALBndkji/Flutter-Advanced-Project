import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/helpers/spacing.dart';
import 'package:flutter_advanced_project/core/theme/styles.dart';
import 'package:flutter_advanced_project/core/widgets/app_text_button.dart';
import 'package:flutter_advanced_project/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:flutter_advanced_project/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter_advanced_project/features/login/widgets/email_and_password.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(height: 8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(height: 36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const EmailAndPassword(),
                      verticalSpace(height: 24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(height: 40),
                      AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          // validateThenDoLogin(context);
                        },
                      ),
                      verticalSpace(height: 16),
                      const TermsAndConditionsText(),
                      verticalSpace(height: 60),
                      const DontHaveAccountText(),
                      // const LoginBlocListener(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
