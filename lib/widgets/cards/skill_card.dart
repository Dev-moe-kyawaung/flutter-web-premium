import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moe_portfolio/theme/colors.dart';

class SkillCard extends StatefulWidget {
  final Map<String, dynamic> skill;

  const SkillCard({
    Key? key,
    required this.skill,
  }) : super(key: key);

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, -20 * (1 - _controller.value)),
            child: Opacity(
              opacity: _controller.value,
              child: child,
            ),
          );
        },
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
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon
                Text(
                  widget.skill['icon'] ?? '💻',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: 16),

                // Name
                Text(
                  widget.skill['name'] ?? 'Skill',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 12),

                // Skill Bar
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: (widget.skill['level'] ?? 85) / 100,
                    minHeight: 6,
                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.primary.withOpacity(0.8),
                    ),
                  ),
                ),
                SizedBox(height: 8),

                // Level
                Text(
                  '${widget.skill['level'] ?? 85}%',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
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
