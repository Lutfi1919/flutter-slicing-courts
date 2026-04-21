import 'package:application_sewa_lapangan/views/package_duration.dart';
import 'package:application_sewa_lapangan/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sports Courts",
          style: GoogleFonts.stackSansHeadline(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          // textAlign: TextAlign.center,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView.separated(
          itemCount: 3,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10,);
          },
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 2,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      color: Colors.grey,
                      // image: DecorationImage(
                      //   image: NetworkImage('https://i.pinimg.com/736x/13/c3/42/13c3423cd3d2e12a6087d33e14093615.jpg'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 13
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(
                              "Futsal Court A",
                              style: GoogleFonts.stackSansHeadline(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.star, color: Colors.amber),
                            Text(
                              "4.5",
                              style: GoogleFonts.stackSansHeadline(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Indoor || Air Conditioner",
                          style: GoogleFonts.stackSansHeadline(
                            color: fromCssColor('#4b5563'),
                          ), 
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(
                              "Rp 50.000/hour",
                              style: GoogleFonts.stackSansHeadline(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            CustomButton(
                              textButton: "Select",
                              heightButton: 30,
                              widthButton: 100,
                              titleSize: 12,
                              radiusButton: 10,
                              onPressed: () {
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (context) => PackageDuration()
                                  )
                                );
                              }
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            );
            // Container(
            //   width: double.infinity,
            //   height: 300,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(20),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.black,
            //         spreadRadius: 5,
            //         blurRadius: 7,
            //         offset: Offset(0, 3),
            //       )
            //     ]
            //   ),
            // );
          },
        ),
      ),
    );
  }
}