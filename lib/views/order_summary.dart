import 'package:application_sewa_lapangan/widgets/button.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
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
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                      child: Divider( // : pemisah pake garis
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(Icons.hourglass_top),
                        SizedBox(width: 5,),
                        Text("Duration",
                          style: GoogleFonts.stackSansHeadline(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Spacer(), // : bikin jarak sampe ke ujung
                        Text("2 Hours",
                          style: GoogleFonts.stackSansHeadline(
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                      child: Divider( // : pemisah pake garis
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(Icons.discount),
                        SizedBox(width: 5,),
                        Text("Price Per Hour",
                          style: GoogleFonts.stackSansHeadline(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Spacer(), // : bikin jarak sampe ke ujung
                        Text("Rp. 50.000",
                          style: GoogleFonts.stackSansHeadline(
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        Text("Subtotal (2 hours)",
                          style: GoogleFonts.stackSansHeadline(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Spacer(), // : bikin jarak sampe ke ujung
                        Text("Rp. 50.000",
                          style: GoogleFonts.stackSansHeadline(
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        Text("Service Fee",
                          style: GoogleFonts.stackSansHeadline(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Spacer(), // : bikin jarak sampe ke ujung
                        Text("Rp. 5.000",
                          style: GoogleFonts.stackSansHeadline(
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("Total",
                          style: GoogleFonts.stackSansHeadline(
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                          ),
                        ),
                        Spacer(), // : bikin jarak sampe ke ujung
                        Text("Rp. 105.000",
                          style: GoogleFonts.stackSansHeadline(
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.info),
                          SizedBox(width: 10,),
                          Text("Booking Policy",
                            style: GoogleFonts.stackSansHeadline(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: EdgeInsets.only(left: 34),
                        child: Text("Free cancelation up to 5 hours before your booking time. Equipment rental available on-site.",
                        style: GoogleFonts.stackSansHeadline(
                          color: fromCssColor("#4b5563"),
                          fontSize: 12
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Divider(),
              CustomButton(textButton: "Choose Payment Method", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}