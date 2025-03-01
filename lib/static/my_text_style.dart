import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle {
  static TextStyle titleLarge = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );

  static TextStyle titleMedium = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle titleSmall = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bodyMedium = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodySmall = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle labelLarge = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle labelMedium = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: const Color(0xFF6F6C6D)
  );

  static TextStyle labelSmall = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
      color: const Color(0xFF6F6C6D)
  );

  static TextStyle displaySmall = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600,
      color: const Color(0xFF6F6C6D)
  );
}