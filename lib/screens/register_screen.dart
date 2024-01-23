import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:obviedo/routes/route_path.dart';
import 'package:obviedo/utils/app_colors.dart';
import 'package:obviedo/widgets/background_container.dart';
import 'package:obviedo/widgets/custom_button.dart';
import 'package:obviedo/widgets/custom_input_field.dart';
import 'package:obviedo/widgets/language_tab_bar.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: BackgroundContainer(
        backgroundImage: 'assets/images/login_bg.png',
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: LanguageTabBar(),
              ),
              SizedBox(height: size.height * 0.10),
              const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'KronaOne',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: size.height * 0.06),
              const CustomInputField(
                icon: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
                header: "Email Address",
                hint: 'Sample@xyz.com',
              ),
              const SizedBox(height: 10),
              const CustomInputField(
                icon: Icon(
                  Icons.phone_outlined,
                  color: Colors.white,
                ),
                header: "Phone Number",
                hint: '0129384857',
              ),
              const SizedBox(height: 10),
              const CustomInputField(
                icon: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                header: "Password",
                hint: '***************',
                isPassword: true,
              ),
              SizedBox(height: size.height * 0.04),
              CustomButton(
                onpressed: () {},
                text: 'Get Started',
                backgroundColor: Colors.white,
                textColor: AppColors.primary,
                width: double.infinity,
              ),
              SizedBox(height: size.height * 0.04),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: "Already Have an Account? ",
                    style: const TextStyle(
                      color: AppColors.whiteOp50,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              RoutePath.login,
                              (route) => false,
                            );
                          },
                        text: 'Login',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
