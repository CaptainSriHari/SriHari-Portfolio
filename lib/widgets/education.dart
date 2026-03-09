import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Education',
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            leading: const Icon(Icons.school, color: Colors.cyan),
            title: Text(
              'B.Com - Computers',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'AKVK Degree College, Ongole\n2018 - 2022',
              style: GoogleFonts.poppins(),
            ),
          ),
        ),
      ],
    );
  }
}
