import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:expense_tracker/constants/color_settings/color_settings.dart';
import 'package:expense_tracker/pages/onboarding/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: ColorSettings.mainGradient,
      ),
      childWidget: SizedBox(
        height: 100,
        width: 100,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            AppLocalizations.of(context)?.mono ?? 'mono',
            style: GoogleFonts.inter(
                color: ColorSettings.textColor,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 18),
          ),
        ),
      ),
      defaultNextScreen: const OnboardingPage(),
    );
  }
}
