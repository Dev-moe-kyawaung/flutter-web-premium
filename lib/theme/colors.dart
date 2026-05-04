import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF6366F1);
  static const Color primaryLight = Color(0xFF818CF8);
  static const Color primaryDark = Color(0xFF4F46E5);
  
  // Secondary Colors
  static const Color secondary = Color(0xFF8B5CF6);
  static const Color secondaryLight = Color(0xFFA78BFA);
  static const Color secondaryDark = Color(0xFF7C3AED);
  
  // Accent Colors
  static const Color accent = Color(0xFF06B6D4);
  static const Color accentLight = Color(0xFF22D3EE);
  static const Color accentDark = Color(0xFF0891B2);
  
  // Background
  static const Color dark = Color(0xFF0F172A);
  static const Color darkLight = Color(0xFF1E293B);
  static const Color darkLighter = Color(0xFF334155);
  
  // Surface
  static const Color cardBg = Color.fromRGBO(15, 23, 42, 0.8);
  static const Color cardBgLight = Color.fromRGBO(30, 41, 59, 0.9);
  
  // Text
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFA1A5B4);
  static const Color textTertiary = Color(0xFF64748B);
  
  // Semantic Colors
  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFFCA5A5);
  static const Color error = Color(0xFFFCA5A5);
  static const Color info = Color(0xFF3B82F6);
  
  // Borders
  static const Color border = Color.fromRGBO(255, 255, 255, 0.1);
  static const Color borderLight = Color.fromRGBO(255, 255, 255, 0.2);
  
  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [dark, darkLight, dark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient cardGradient = LinearGradient(
    colors: [
      Color.fromRGBO(99, 102, 241, 0.1),
      Color.fromRGBO(139, 92, 246, 0.05),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
