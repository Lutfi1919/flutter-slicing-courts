import 'package:application_sewa_lapangan/views/payment_confirmation.dart';
import 'package:application_sewa_lapangan/views/payment_success.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(
          "Payment Method",
          style: GoogleFonts.stackSansHeadline(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          // textAlign: TextAlign.center,
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Text("Choose Payment",
                style: GoogleFonts.stackSansHeadline(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text("Select your preferred payment method",
                style: GoogleFonts.stackSansHeadline(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20,),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 2,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => PaymentSuccess())
                    );
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Pay Location",
                                  style: GoogleFonts.stackSansHeadline(
                                    fontSize: 18,
                                  ),
                                ),
                                Text("Cash Payment",
                                  style: GoogleFonts.stackSansHeadline(
                                    fontSize: 16,
                                    color: fromCssColor("#4b5563")
                                  ),
                                ),
                              ]
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Divider(),
                            SizedBox(height: 7,),
                            Text("Pay with cash when you arrive at the location",
                              style: GoogleFonts.stackSansHeadline(
                                fontSize: 16,
                                color: fromCssColor("#4b5563")
                              ),
                            ),
                          ],
                        ),
                      ]
                    )
                  ),
                )
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 2,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => PaymentConfirmation())
                    );
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Pay via QRIS",
                                  style: GoogleFonts.stackSansHeadline(
                                    fontSize: 18,
                                  ),
                                ),
                                Text("Digital Payment",
                                  style: GoogleFonts.stackSansHeadline(
                                    fontSize: 16,
                                    color: fromCssColor("#4b5563")
                                  ),
                                ),
                              ]
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Divider(),
                            SizedBox(height: 7,),
                            Text("Scan QR code to pay instantly with your e-wallet",
                              style: GoogleFonts.stackSansHeadline(
                                fontSize: 16,
                                color: fromCssColor("#4b5563")
                              ),
                            ),
                          ],
                        ),
                      ]
                    )
                  ),
                )
              ),
              SizedBox(height: 50,),
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
              SizedBox(height: 50,),
            ],
          )
        ),
      )
    );
  }
}