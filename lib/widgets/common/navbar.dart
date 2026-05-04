import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moe_portfolio/theme/colors.dart';
import 'package:moe_portfolio/models/constants.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int activeIndex = 0;
  bool isMobileMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    final isTablet = MediaQuery.of(context).size.width < 1024;

    return FadeInDown(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Color.fromRGBO(15, 23, 42, 0.8),
          border: Border(
            bottom: BorderSide(
              color: AppColors.border,
              width: 1,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 40),
            child: Row(
              children: [
                // Logo
                _buildLogo(),
                SizedBox(width: 40),

                // Desktop Menu
                if (!isMobile)
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        Constants.navItems.length,
                        (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: _buildNavItem(
                            Constants.navItems[index],
                            index,
                            activeIndex == index,
                          ),
                        ),
                      ),
                    ),
                  ),

                Spacer(),

                // Right Actions
                if (!isMobile) _buildSocialIcons(),

                if (isMobile)
                  IconButton(
                    onPressed: () => setState(() => isMobileMenuOpen = !isMobileMenuOpen),
                    icon: Icon(
                      isMobileMenuOpen ? Icons.close : Icons.menu,
                      color: AppColors.textPrimary,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return FadeInLeft(
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primary, AppColors.secondary],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'M',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(width: 12),
          Text(
            'MoeKyaw',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String label, int index, bool isActive) {
    return MouseRegion(
      onEnter: (_) => setState(() => activeIndex = index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isActive ? AppColors.primary : AppColors.textSecondary,
            ),
          ),
          if (isActive)
            Container(
              margin: EdgeInsets.only(top: 8),
              height: 3,
              width: 24,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.primary, AppColors.secondary],
                ),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      children: [
        _socialIconButton(Icons.language, AppColors.primary),
        SizedBox(width: 16),
        _socialIconButton(Icons.code, AppColors.secondary),
        SizedBox(width: 16),
        _socialIconButton(Icons.email, AppColors.accent),
      ],
    );
  }

  Widget _socialIconButton(IconData icon, Color color) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.1),
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Icon(icon, color: color, size: 20),
        ),
      ),
    );
  }
}
