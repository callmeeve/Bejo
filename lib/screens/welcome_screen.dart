import 'package:bejo/components/customized_button.dart';
import 'package:bejo/screens/login_screen.dart';
import 'package:bejo/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: Lottie.network(
                'https://lottie.host/6bfadb99-dc94-406e-a04f-5de92952a7c9/HU1JGdNHdr.json',
                repeat: true,
                frameRate: FrameRate(60),
                fit: BoxFit.contain,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text(
                  "BEJO",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7C83FD),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Make your experience of study\nbecome easy and enjoyful",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomizedButton(
                  buttonText: 'Login',
                  textColor: Colors.white,
                  buttonColor: const Color(0xff7C83FD),
                  borderColor: const Color(0xff7C83FD),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                ),
                CustomizedButton(
                  buttonText: 'Register',
                  textColor: const Color(0xff7C83FD),
                  buttonColor: Colors.white,
                  borderColor: const Color(0xff7C83FD),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
