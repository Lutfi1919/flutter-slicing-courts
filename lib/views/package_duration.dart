import 'package:application_sewa_lapangan/views/order_summary.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageDuration extends StatelessWidget {
  const PackageDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Package Duration",
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
          horizontal: 20,
          vertical: 10
        ),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return InkWell(
              child: Container(
                // height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )
                ),
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "1 Hour",
                          style: GoogleFonts.stackSansHeadline(
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp 50.000",
                          style: GoogleFonts.stackSansHeadline(
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          "Perfect for training",
                          style: GoogleFonts.stackSansHeadline(
                            // fontWeight: FontWeight.w600,
                            color: fromCssColor('#4b5563'),
                            fontSize: 12
                          ),
                        ),
                        Spacer(),
                        Text(
                          "per session",
                          style: GoogleFonts.stackSansHeadline(
                            // fontWeight: FontWeight.w600,
                            color: fromCssColor('#4b5563'),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => OrderSummary() 
                  )
                );
              },
            );
          }, 
          separatorBuilder: (context, index) {
            return SizedBox(height: 10,);
          },
          itemCount: 4
        ),
      ),
    );
  }
}