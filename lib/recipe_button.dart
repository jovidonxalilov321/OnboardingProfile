import 'package:flutter/material.dart';
import 'package:uygavazifa301/onboarding-detail.dart';
import 'package:uygavazifa301/utils.dart';

import 'Onboarding/precentation/pages/Onboarding_detail_view.dart';

class RecipeButton extends StatelessWidget {
  const RecipeButton({
    super.key,
    required this.text,
    required this.callback,
    this.backgroundColor = AppColors.redpink,
    this.foregroundColor = AppColors.pink,
    this.size = const Size(175, 27),
    this.fontSize = 15, required this.vma,
  });

  final String text;
  final Color backgroundColor, foregroundColor;
  final Size size;
  final double fontSize;
  final VoidCallback callback;

  final OnboardingDetailViewModel vma;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnboardingDetail(vma: vma)),
          );
        },
        onLongPress: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
