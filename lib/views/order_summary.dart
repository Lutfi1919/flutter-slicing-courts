import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Summary",
          style: GoogleFonts.stackSansHeadline(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 2, // buat efek mengambang
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Basketball Court A",
                    style: GoogleFonts.stackSansHeadline(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Indoor || Air Conditioner",
                    style: GoogleFonts.stackSansHeadline(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.calendar_month_rounded),
                      SizedBox(width: 5,),
                      Text("Date",
                        style: GoogleFonts.stackSansHeadline(
                          color: fromCssColor("#4b5563"),
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Spacer(), // : bikin jarak sampe ke ujung
                      Text("Monday, Apr 30",
                        style: GoogleFonts.stackSansHeadline(
                          color: fromCssColor("#4b5563"),
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}