import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final VoidCallback? onPressed;
  final double widthButton;
  final double heightButton;
  final double titleSize;
  final double radiusButton;

  const CustomButton({
    super.key, 
    required this.textButton, 
    required this.onPressed,
    this.widthButton = double.infinity,
    this.heightButton = 50,
    this.titleSize = 16,
    this.radiusButton = 15,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthButton, // : mengikuti lebar layar
      height: heightButton,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom( // styleFrom : styling button
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(radiusButton),
          )
        ), 
        child: Text(textButton, style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: titleSize,
          color: Colors.white
        ))
      ),
    );
  }
}