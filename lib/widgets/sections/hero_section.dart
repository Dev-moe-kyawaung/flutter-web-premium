import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moe_portfolio/theme/colors.dart';
import 'package:moe_portfolio/models/constants.dart';
import 'package:moe_portfolio/widgets/common/custom_button.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> with TickerProviderStateMixin {
  late AnimationController _typingController;
  int currentTitleIndex = 0;

  @override
  void initState() {
    super.initState();
    _typingController = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    )..repeat(reverse: false);

    Future.delayed(Duration(seconds: 4), _changeTitle);
  }

  void _changeTitle() {
    if (mounted) {
      setState(() {
        currentTitleIndex = (currentTitleIndex + 1) % heroTitles.length;
      });
      _typingController.forward(from: 0.0);
      Future.delayed(Duration(seconds: 4), _changeTitle);
    }
  }

  @override
  void dispose() {
    _typingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight - 80,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 40,
        vertical: 40,
      ),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromRGBO(99, 102, 241, 0.15),
            Colors.transparent,
          ],
          center: Alignment(0.2, -0.5),
          radius: 1.5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Main Title
          FadeInDown(
            duration: Duration(milliseconds: 800),
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Colors.white, Color(0xFFA1A5B4)],
              ).createShader(bounds),
              child: Text(
                Constants.name,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: isMobile ? 36 : 56,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  letterSpacing: -1.5,
                ),
              ),
            ),
          ),
          SizedBox(height: 24),

          // Animated Subtitle
          SizedBox(
            height: 60,
            child: FadeInUp(
              duration: Duration(milliseconds: 800),
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 800),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: ShaderMask(
                  key: ValueKey(currentTitleIndex),
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [AppColors.primary, AppColors.secondary, AppColors.accent],
                  ).createShader(bounds),
                  child: Text(
                    heroTitles[currentTitleIndex],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: isMobile ? 18 : 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),

          // Description
          FadeInUp(
            delay: Duration(milliseconds: 200),
            child: SizedBox(
              width: isMobile ? double.infinity : 600,
              child: Text(
                Constants.bio,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: isMobile ? 14 : 16,
                  color: AppColors.textSecondary,
                  height: 1.8,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 40),

          // CTA Buttons
          FadeInUp(
            delay: Duration(milliseconds: 400),
            child: isMobile
                ? Column(
                    children: [
                      CustomButton(
                        label: 'View My Work',
                        onPressed: () {},
                        isPrimary: true,
                        width: double.infinity,
                      ),
                      SizedBox(height: 12),
                      CustomButton(
                        label: 'Get In Touch',
                        onPressed: () {},
                        isPrimary: false,
                        width: double.infinity,
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        label: 'View My Work',
                        onPressed: () {},
                        isPrimary: true,
                      ),
                      SizedBox(width: 20),
                      CustomButton(
                        label: 'Get In Touch',
                        onPressed: () {},
                        isPrimary: false,
                      ),
                    ],
                  ),
          ),

          // Scroll Indicator
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: BounceInDown(
                from: 20,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.keyboard_arrow_down, color: AppColors.textSecondary),
                    SizedBox(height: 8),
                    Text(
                      'Scroll to explore',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
