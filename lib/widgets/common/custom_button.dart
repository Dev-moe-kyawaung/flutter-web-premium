import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moe_portfolio/theme/colors.dart';

class CustomButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isPrimary;
  final double? width;
  final IconData? icon;
  final bool isLoading;

  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.isPrimary = true,
    this.width,
    this.icon,
    this.isLoading = false,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.isLoading ? null : widget.onPressed,
        child: Container(
          width: widget.width ?? 180,
          height: 50,
          decoration: BoxDecoration(
            gradient: widget.isPrimary
                ? LinearGradient(
                    colors: [AppColors.primary, AppColors.secondary],
                  )
                : null,
            color: !widget.isPrimary ? Colors.transparent : null,
            border: !widget.isPrimary
                ? Border.all(
                    color: AppColors.border,
                    width: 1.5,
                  )
                : null,
            borderRadius: BorderRadius.circular(12),
            boxShadow: isHovered && widget.isPrimary
                ? [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.3),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ]
                : null,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.isLoading ? null : widget.onPressed,
              borderRadius: BorderRadius.circular(12),
              child: Center(
                child: widget.isLoading
                    ? SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            widget.isPrimary ? Colors.white : AppColors.primary,
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (widget.icon != null) ...[
                            Icon(
                              widget.icon,
                              color: widget.isPrimary ? Colors.white : AppColors.primary,
                              size: 18,
                            ),
                            SizedBox(width: 8),
                          ],
                          Text(
                            widget.label,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: widget.isPrimary ? Colors.white : AppColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
