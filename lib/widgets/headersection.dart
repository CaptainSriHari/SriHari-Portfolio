import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  Future<void> _openResume() async {
    // Option 1: Local PDF (Flutter Web Desktop)
    final Uri url = Uri.parse("assets/Srihari_Flutter_06-02-2026.pdf");

    // Option 2: Google Drive
    // final Uri gdv = Uri.parse(
    //   "https://drive.google.com/file/d/11BnXJUOXveoe7ThHfKbZfEz9ddvBT7gw/view?usp=drive_link",
    // );

    await launchUrl(url, mode: LaunchMode.platformDefault);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [Colors.cyan, Colors.indigo],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.cyan.withOpacity(0.4),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage(
                'assets/SriHari.jpeg',
              ), // Add your photo
              radius: 68,
            ),
          ),
          const SizedBox(height: 20),
          DefaultTextStyle(
            style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  speed: Duration(milliseconds: 100),
                  'SRIHARI KADIYAM',
                  textStyle: TextStyle(color: Colors.red),
                ),
              ],
              isRepeatingAnimation: false,
            ),
          ),

          SizedBox(width: 6),
          // LINK Icon
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Tooltip(
              message: "Hey! Buddy Tap To Open My Resume",
              child: GestureDetector(
                onTap: _openResume,
                child: Icon(Icons.link, color: Colors.red),
              ),
            ),
          ),

          Text(
            'Hyderabad | +91 8106040532 | sreeharikadiyam@gmail.com',
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            'FLUTTER DEVELOPER',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.cyan,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(16),
              // backdropFilter: const BlurFilter(10),
            ),
            child: Text(
              'To find a challenging role that utilizes my 1.6 years expertise of Flutter development and allows me to grow professionally in the field of mobile application development.',
              style: GoogleFonts.poppins(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
