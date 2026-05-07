import 'package:application_sewa_lapangan/views/payment_success.dart';
import 'package:application_sewa_lapangan/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentConfirmation extends StatelessWidget {
  const PaymentConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(
          "Payment Confirmation",
          style: GoogleFonts.stackSansHeadline(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 100
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Payment Method",
                    style: GoogleFonts.stackSansHeadline(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Rp. 105.000",
                    style: GoogleFonts.stackSansHeadline(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20,),
                  // Container(
                  //   width: double.infinity,
                  //   height: 300,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(30),
                  //     color: Colors.grey,
                  //   ),
                  // ),
                  Icon(
                    Icons.qr_code_2_outlined, 
                    size: 300, 
                    color: Colors.black,
                  ),
                  SizedBox(height: 20,),
                  Text("Scan to Pay",
                    style: GoogleFonts.stackSansHeadline(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("Point your camera at the QR code",
                    style: GoogleFonts.stackSansHeadline(
                      fontSize: 16,
                      color: fromCssColor("#4b5563")
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Open your mobile banking or e-wallet app and scan the QR code above to complete your payment",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.stackSansHeadline(
                        color: fromCssColor("#4b5563")
                      ),
                    ),
                  ),
                  CustomButton(textButton: "I Have Paid", widthButton: double.infinity, onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => PaymentSuccess()
                      )
                    );
                  }),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.share, color: fromCssColor("#4b5563"), size: 20,),
                      SizedBox(width: 5,),
                      Text("Share",
                        style: GoogleFonts.stackSansHeadline(
                          color: fromCssColor("#4b5563")
                        ),
                      ),
                      SizedBox(width: 20,),
                      Icon(Icons.download_sharp, color: fromCssColor("#4b5563"), size: 20,),
                      SizedBox(width: 3,),
                      Text("Save",
                        style: GoogleFonts.stackSansHeadline(
                          color: fromCssColor("#4b5563")
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}