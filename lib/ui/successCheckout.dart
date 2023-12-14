import 'package:flutix/ui/myticketpage.dart';
import 'package:flutix/ui/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          Container(
            child: Column(
              children: [
                Icon(Icons.confirmation_number_sharp,
                color: Color.fromARGB(255, 79, 62, 157),
                size: 90),
                SizedBox(height: 50),
                Text('Happy Watching!',
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 20)),
                SizedBox(height: 20),
                Text('You have successfully \nbought the ticket',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 114, 114, 114),
                        fontSize: 16)),
                SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePageUser(), 
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 79, 62, 157),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    minimumSize: Size(250, 50),
                  ),
                  child: Text(
                    "Back to home",
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
