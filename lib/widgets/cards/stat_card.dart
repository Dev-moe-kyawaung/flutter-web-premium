import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moe_portfolio/theme/colors.dart';

class StatCard extends StatelessWidget {
  final Map<String, dynamic> stat;

  const StatCard({
    Key? key,
    required this.stat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.cardGradient,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              stat['icon'] ?? '📊',
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 12),
            Text(
              stat['value'] ?? '0',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                background: Paint()
                  ..shader = LinearGradient(
                    colors: [AppColors.primary, AppColors.secondary],
                  ).createShader(
                    Rect.fromLTWH(0, 0, 100, 50),
                  ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              stat['label'] ?? 'Stat',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
