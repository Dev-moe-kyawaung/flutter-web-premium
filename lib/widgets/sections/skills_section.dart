import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moe_portfolio/theme/colors.dart';
import 'package:moe_portfolio/models/constants.dart';
import 'package:moe_portfolio/widgets/cards/skill_card.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  String activeCategory = 'mobile';

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    
    final categories = ['mobile', 'frontend', 'backend', 'devops'];
    final categoryLabels = ['📱 Mobile', '⚛️ Frontend', '🔧 Backend', '☁️ DevOps'];
    
    final filteredSkills = skillsData
        .where((skill) => skill['category'] == activeCategory)
        .toList();

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 40,
        vertical: 80,
      ),
      child: Column(
        children: [
          // Section Title
          FadeInUp(
            child: Column(
              children: [
                Text(
                  'Skills & Expertise',
                  style: GoogleFonts.poppins(
                    fontSize: isMobile ? 28 : 40,
                    fontWeight: FontWeight.w900,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: 60,
                  height: 4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.primary,
                        AppColors.secondary,
                        AppColors.accent,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),

          // Category Tabs
          FadeInUp(
            delay: Duration(milliseconds: 100),
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: List.generate(
                categories.length,
                (index) => _buildCategoryTab(
                  categories[index],
                  categoryLabels[index],
                  activeCategory == categories[index],
                ),
              ),
            ),
          ),
          SizedBox(height: 60),

          // Skills Grid
          AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: GridView.builder(
              key: ValueKey(activeCategory),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile ? 2 : 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemCount: filteredSkills.length,
              itemBuilder: (context, index) {
                return FadeInUp(
                  delay: Duration(milliseconds: index * 50),
                  child: SkillCard(skill: filteredSkills[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryTab(String id, String label, bool isActive) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => setState(() => activeCategory = id),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            gradient: isActive
                ? LinearGradient(colors: [AppColors.primary, AppColors.secondary])
                : null,
            color: !isActive ? Color.fromRGBO(255, 255, 255, 0.05) : null,
            border: Border.all(
              color: isActive ? AppColors.primary : AppColors.border,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(12),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.3),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ]
                : null,
          ),
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isActive ? Colors.white : AppColors.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
