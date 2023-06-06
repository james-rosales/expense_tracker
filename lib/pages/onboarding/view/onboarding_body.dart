import 'package:expense_tracker/constants/constrants.dart';
import 'package:expense_tracker/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //header
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: kToolbarHeight + 50),
              child: Image.asset(
                ImageAsset.onBoarding,
                scale: 3.0,
              ),
            ),
          ),
          const SizedBox(height: 10),
          //body
          Center(
            child: Text(
              'Spend Smarter\nSave More',
              style: GoogleFonts.inter(
                color: ColorSettings.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: [
              const RoundedButton(label: 'Get Started'),
              //footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already Have Account?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Log In'),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
