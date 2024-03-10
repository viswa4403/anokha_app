
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../../home.dart';


void main() => runApp(const PaymentPending());

class PaymentPending extends StatelessWidget {
  const PaymentPending({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 44, 68),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius
                      .all(
                      Radius.circular(
                          MediaQuery.of(context).size.width*0.08)),
                  color: Colors.white,),

                child: Padding(
                  padding:
                  EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.1,right: MediaQuery.of(context).size.width*0.1,top: MediaQuery.of(context).size.width*0.1,bottom: MediaQuery.of(context).size.width*0.05,),
                  child: Column(
                    children: [
                      Lottie.asset(
                        //todo: lottie
                        'assets/json/transactionPending.json',
                        width: MediaQuery.of(context).size.width*0.5,
                        height: MediaQuery.of(context).size.width*0.5,
                      ),
                      Text(
                        "Payment Pending",
                        style: GoogleFonts.nunito(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Wait for 10 minutes",
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),

                      Padding(
                        padding:
                        const EdgeInsets.all(
                            20),
                        child: MaterialButton(
                          onPressed: () {

                            // should go to event registration page
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
                              return HomePage();
                            }), (route) => false);

                          },
                          shape:
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius
                                .circular(25),
                          ),
                          minWidth: MediaQuery.of(context).size.width*0.1,
                          padding: const EdgeInsets
                              .symmetric(
                              horizontal: 12.0,
                              vertical: 8.0),
                          color: Color.fromARGB(
                              255, 8, 44, 68),
                          child: Text(
                            "Back to home",
                            style:
                            GoogleFonts.nunito(
                              fontSize: 15,
                              fontWeight:
                              FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}