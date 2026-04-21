import 'package:application_sewa_lapangan/views/home_page.dart';
import 'package:application_sewa_lapangan/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:from_css_color/from_css_color.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( // kalo mau bisa discroll
        child: Padding(
          padding: const EdgeInsets.symmetric( // symetric : horizontal dan vertical
            horizontal: 30, 
            vertical: 50
          ),
          child: Column(
            // mainAxis dipake kalo lu gapake Padding
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
              ),
              // kasih jarak antar widget
              SizedBox(height: 40),
              Text(
                "Court Booking",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
                
              ),
              SizedBox(height: 15,),
              Text(
                "Easily and quickly book sports courts at your convenience. Choose from a veriaty of courts, select your preferred duratioin, and confirm your booking seamlessly.",
                textAlign: TextAlign.center, // align text
                style: GoogleFonts.poppins( // pake packages GoogleFonts
                  fontSize: 16,
                  color: fromCssColor('#4b5563'), // pake packages CssColor
                ),
              ),
              SizedBox(height: 30,),
              // pakai component/widget yang tadi dibuat, dan mengisi props nya
              CustomButton(textButton: "Get Started", onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HomePage()
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}