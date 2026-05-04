import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moe_portfolio/theme/colors.dart';
import 'package:moe_portfolio/models/constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return FadeInUp(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 20 : 40,
          vertical: 40,
        ),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: AppColors.border),
          ),
          color: Color.fromRGBO(0, 0, 0, 0.5),
        ),
        child: Column(
          children: [
            // Content
            isMobile
                ? Column(
                    children: [
                      _buildFooterSection('About', [
                        Constants.name,
                        'Android Developer',
                        'Full-Stack Engineer',
                      ]),
                      SizedBox(height: 20),
                      _buildFooterSection('Quick Links', [
                        'Home',
                        'Projects',
                        'Contact',
                      ]),
                      SizedBox(height: 20),
                      _buildFooterSection('Follow', [
                        'GitHub',
                        'LinkedIn',
                        'Email',
                      ]),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildFooterSection('About', [
                        Constants.name,
                        'Android Developer',
                        'Full-Stack Engineer',
                      ]),
                      _buildFooterSection('Quick Links', [
                        'Home',
                        'Projects',
                        'Contact',
                      ]),
                      _buildFooterSection('Follow', [
                        'GitHub',
                        'LinkedIn',
                        'Email',
                      ]),
                    ],
                  ),
            SizedBox(height: 40),

            // Bottom
            Divider(color: AppColors.border),
            SizedBox(height: 16),
            Text(
              '© 2024 ${Constants.name}. All rights reserved. Built with ❤️ for the web.',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 12,
                color: AppColors.textTertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooterSection(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 12),
        ...items.map((item) => Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Text(
            item,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: AppColors.textSecondary,
            ),
          ),
        )),
      ],
    );
  }
}
