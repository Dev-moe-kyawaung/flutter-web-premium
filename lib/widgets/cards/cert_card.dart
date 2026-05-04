import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moe_portfolio/theme/colors.dart';

class CertCard extends StatefulWidget {
  final Map<String, dynamic> cert;

  const CertCard({
    Key? key,
    required this.cert,
  }) : super(key: key);

  @override
  State<CertCard> createState() => _CertCardState();
}

class _CertCardState extends State<CertCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardBg,
          border: Border.all(
            color: isHovered ? AppColors.primary : AppColors.border,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: AppColors.primary.withOpacity(0.3),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ]
              : null,
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon
                Text(
                  cert['icon'] ?? '🏆',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: 16),

                // Title
                Text(
                  cert['title'] ?? 'Certification',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8),

                // Issuer
                Text(
                  cert['issuer'] ?? 'Issuer',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),

                // Date
                Text(
                  cert['date'] ?? '2023',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
