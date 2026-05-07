import 'package:application_sewa_lapangan/views/home_page.dart';
import 'package:application_sewa_lapangan/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          child: Column(
            children: [
              Image.asset('assets/images/checklist.png',
                width: 150,
                height: 150,
              ),
              Text("Booking Successful",
                style: GoogleFonts.stackSansHeadline(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text("Your court has been reserved successfully",
                style: GoogleFonts.stackSansHeadline(
                  fontSize: 14,
                  color: fromCssColor("#4b5663")
                ),
              ),
              SizedBox(height: 40,),
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
                      "Booking Details",
                      style: GoogleFonts.stackSansHeadline(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Court Name",
                          style: GoogleFonts.stackSansHeadline(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Spacer(), // : bikin jarak sampe ke ujung
                        Text("Basketball Court A",
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
                        Text("Date",
                          style: GoogleFonts.stackSansHeadline(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Spacer(), // : bikin jarak sampe ke ujung
                        Text("Dec 15",
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
                        Text("Duration",
                          style: GoogleFonts.stackSansHeadline(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Spacer(), // : bikin jarak sampe ke ujung
                        Text("2 hours",
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
                        Text("Payment Method",
                          style: GoogleFonts.stackSansHeadline(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Spacer(), // : bikin jarak sampe ke ujung
                        Text("Cash Payment",
                          style: GoogleFonts.stackSansHeadline(
                            fontWeight: FontWeight.w500,
                            fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(thickness: 4, color: Colors.black,),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Total Price",
                          style: GoogleFonts.stackSansHeadline(
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                          ),
                        ),
                        Spacer(), // : bikin jarak sampe ke ujung
                        Text("Rp. 105.000",
                          style: GoogleFonts.stackSansHeadline(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              CustomButton(textButton: "Download Receipt", onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => HomePage()
                  )
                );
              }),
              SizedBox(height: 10,),
              CustomButton(textButton: "Back to Home", bgButton: fromCssColor("#D3D3D3"),  colorText: Colors.black, onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => HomePage()
                  )
                );
              }),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}