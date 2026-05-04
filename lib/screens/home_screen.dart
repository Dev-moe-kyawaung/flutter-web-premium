import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:moe_portfolio/theme/colors.dart';
import 'package:moe_portfolio/widgets/common/navbar.dart';
import 'package:moe_portfolio/widgets/sections/hero_section.dart';
import 'package:moe_portfolio/widgets/sections/about_section.dart';
import 'package:moe_portfolio/widgets/sections/skills_section.dart';
import 'package:moe_portfolio/widgets/sections/projects_section.dart';
import 'package:moe_portfolio/widgets/sections/certifications_section.dart';
import 'package:moe_portfolio/widgets/sections/contact_section.dart';
import 'package:moe_portfolio/widgets/common/footer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Scaffold(
      backgroundColor: AppColors.dark,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomNavBar(),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.dark,
              AppColors.darkLight,
              AppColors.dark,
            ],
          ),
        ),
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              // Hero Section
              const HeroSection(),

              // About Section
              const AboutSection(),

              // Skills Section
              const SkillsSection(),

              // Projects Section
              const ProjectsSection(),

              // Certifications Section
              const CertificationsSection(),

              // Contact Section
              const ContactSection(),

              // Footer
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
