import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moe_portfolio/theme/colors.dart';
import 'package:moe_portfolio/models/constants.dart';
import 'package:moe_portfolio/widgets/cards/stat_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 40,
        vertical: 80,
      ),
      color: Color.fromRGBO(99, 102, 241, 0.03),
      child: Column(
        children: [
          isMobile
              ? Column(
                  children: [
                    _buildAboutText(),
                    SizedBox(height: 40),
                    _buildStatsGrid(),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _buildAboutText()),
                    SizedBox(width: 60),
                    Expanded(child: _buildStatsGrid()),
                  ],
                ),
        ],
      ),
    );
  }

  Widget _buildAboutText() {
    return FadeInLeft(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 24),
          Text(
            'I\'m an Android Developer based in Tachileik, Myanmar, with nearly 2 years of experience '
            'building reliable, secure, and user-friendly applications.',
            style: GoogleFonts.inter(
              fontSize: 16,
              color: AppColors.textSecondary,
              height: 1.8,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'I specialize in Kotlin, Android Jetpack, and Firebase with strong expertise in full-stack '
            'development using React, Node.js, and cloud technologies like AWS and Google Cloud.',
            style: GoogleFonts.inter(
              fontSize: 16,
              color: AppColors.textSecondary,
              height: 1.8,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'When I\'m not coding, I explore new technologies, contribute to open-source projects, '
            'and continuously improve my skills.',
            style: GoogleFonts.inter(
              fontSize: 16,
              color: AppColors.textSecondary,
              height: 1.8,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsGrid() {
    return FadeInRight(
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemCount: statsData.length,
        itemBuilder: (context, index) {
          return FadeInUp(
            delay: Duration(milliseconds: index * 100),
            child: StatCard(stat: statsData[index]),
          );
        },
      ),
    );
  }
}
