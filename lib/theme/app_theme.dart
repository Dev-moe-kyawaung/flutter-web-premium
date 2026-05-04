import 'package:flutter/material.dart';
import 'colors.dart';
import 'text_styles.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.dark,
    
    // Color Scheme
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      tertiary: AppColors.accent,
      background: AppColors.dark,
      surface: AppColors.darkLight,
      error: AppColors.error,
      onBackground: AppColors.textPrimary,
      onSurface: AppColors.textPrimary,
      onError: AppColors.textPrimary,
    ),
    
    // Text Theme
    textTheme: TextTheme(
      displayLarge: AppTextStyles.displayLarge.copyWith(color: AppColors.textPrimary),
      displayMedium: AppTextStyles.displayMedium.copyWith(color: AppColors.textPrimary),
      displaySmall: AppTextStyles.displaySmall.copyWith(color: AppColors.textPrimary),
      headlineLarge: AppTextStyles.headingLarge.copyWith(color: AppColors.textPrimary),
      headlineMedium: AppTextStyles.headingMedium.copyWith(color: AppColors.textPrimary),
      headlineSmall: AppTextStyles.headingSmall.copyWith(color: AppColors.textPrimary),
      titleLarge: AppTextStyles.titleLarge.copyWith(color: AppColors.textPrimary),
      titleMedium: AppTextStyles.titleMedium.copyWith(color: AppColors.textPrimary),
      titleSmall: AppTextStyles.titleSmall.copyWith(color: AppColors.textPrimary),
      bodyLarge: AppTextStyles.bodyLarge.copyWith(color: AppColors.textPrimary),
      bodyMedium: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary),
      bodySmall: AppTextStyles.bodySmall.copyWith(color: AppColors.textTertiary),
      labelLarge: AppTextStyles.labelLarge.copyWith(color: AppColors.textPrimary),
      labelMedium: AppTextStyles.labelMedium.copyWith(color: AppColors.textSecondary),
      labelSmall: AppTextStyles.labelSmall.copyWith(color: AppColors.textTertiary),
    ),
    
    // App Bar Theme
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      centerTitle: false,
      titleTextStyle: AppTextStyles.headingSmall.copyWith(
        color: AppColors.textPrimary,
      ),
      iconTheme: IconThemeData(color: AppColors.textPrimary),
    ),
    
    // Button Themes
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        textStyle: AppTextStyles.labelLarge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.textPrimary,
        side: BorderSide(color: AppColors.border),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        textStyle: AppTextStyles.labelLarge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    
    // Card Theme
    cardTheme: CardTheme(
      color: AppColors.cardBg,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: AppColors.border),
      ),
    ),
    
    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color.fromRGBO(255, 255, 255, 0.05),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.primary, width: 2),
      ),
      hintStyle: AppTextStyles.bodySmall.copyWith(
        color: AppColors.textTertiary,
      ),
      labelStyle: AppTextStyles.labelMedium.copyWith(
        color: AppColors.textSecondary,
      ),
    ),
  );
}
