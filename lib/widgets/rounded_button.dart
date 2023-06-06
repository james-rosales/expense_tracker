import 'package:expense_tracker/constants/constrants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  const RoundedButton({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 5))
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        gradient: const LinearGradient(colors: ColorSettings.mainGradient),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: () {},
        child: Text(
          label,
          style: GoogleFonts.inter(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
