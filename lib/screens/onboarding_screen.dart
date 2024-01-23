import 'package:flutter/material.dart';
import 'package:obviedo/routes/route_path.dart';
import 'package:obviedo/utils/app_colors.dart';
import 'package:obviedo/widgets/background_container.dart';
import 'package:obviedo/widgets/custom_button.dart';
import 'package:obviedo/widgets/language_tab_bar.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: BackgroundContainer(
        backgroundImage: 'assets/images/onboarding_bg.png',
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: LanguageTabBar(),
              ),
              SizedBox(height: size.height * 0.03),
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'KronaOne',
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: size.width * 0.25,
                height: size.height * 0.008,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.025),
              const Text(
                'We have a lot of community services to offer you here online, get started below',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'PTSans',
                ),
              ),
              const Spacer(),
              CustomButton(
                onpressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    RoutePath.register,
                    (route) => false,
                  );
                },
                text: 'Sign Up',
                width: double.infinity,
              ),
              SizedBox(height: size.height * 0.025),
              CustomButton(
                onpressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    RoutePath.login,
                    (route) => false,
                  );
                },
                text: 'Login',
                backgroundColor: Colors.white,
                textColor: AppColors.primary,
                width: double.infinity,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
