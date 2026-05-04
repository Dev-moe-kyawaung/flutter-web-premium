import 'package:flutter/material.dart';

class Constants {
  // Personal Info
  static const String name = 'Moe Kyaw Aung';
  static const String title = 'Android Developer @ Microsoft';
  static const String email = 'moekyawaung@engineer.com';
  static const String phone = '+95 988 9000 889';
  static const String location = 'Tachileik, Myanmar';
  static const String dob = '05.07.2000';
  
  // Social Links
  static const String githubUrl = 'https://github.com/Moe-KyawAung';
  static const String github2Url = 'https://github.com/Dev-moe-kyawaung/';
  static const String linkedinUrl = 'https://www.linkedin.com/in/moe-kyaw-aung-2653093a1';
  static const String emailUrl = 'mailto:moekyawaung@engineer.com';
  static const String phoneUrl = 'tel:+959889000889';
  
  // Bio
  static const String bio = 'Passionate Android Developer at Microsoft with 2+ years of experience '
      'building reliable, secure, and user-friendly applications. Full-stack engineer with expertise '
      'in Kotlin, React, and cloud technologies like AWS and Google Cloud.';
  
  // Navigation
  static const List<String> navItems = [
    'Home',
    'About',
    'Skills',
    'Projects',
    'Certifications',
    'Contact',
  ];
  
  static const List<String> navIds = [
    'home',
    'about',
    'skills',
    'projects',
    'certifications',
    'contact',
  ];
}

// Hero Titles for typing effect
const List<String> heroTitles = [
  'Android Developer @ Microsoft',
  'Full-Stack Engineer',
  'AWS Solutions Architect',
  'Kotlin Specialist',
  'Cloud Native Developer',
  'UI/UX Enthusiast',
];

// Skills Data
final List<Map<String, dynamic>> skillsData = [
  // Mobile
  {
    'name': 'Kotlin',
    'icon': '📱',
    'level': 95,
    'category': 'mobile',
    'description': 'Expert in Kotlin for Android development',
  },
  {
    'name': 'Android Jetpack',
    'icon': '🛠️',
    'level': 92,
    'category': 'mobile',
    'description': 'Proficient with Jetpack libraries and components',
  },
  {
    'name': 'Firebase',
    'icon': '🔥',
    'level': 90,
    'category': 'mobile',
    'description': 'Expert in Firebase backend services',
  },
  {
    'name': 'REST APIs',
    'icon': '🌐',
    'level': 93,
    'category': 'mobile',
    'description': 'Strong API integration and consumption skills',
  },
  // Frontend
  {
    'name': 'React.js',
    'icon': '⚛️',
    'level': 90,
    'category': 'frontend',
    'description': 'Advanced React development skills',
  },
  {
    'name': 'TypeScript',
    'icon': '📘',
    'level': 88,
    'category': 'frontend',
    'description': 'Strong TypeScript proficiency',
  },
  {
    'name': 'Tailwind CSS',
    'icon': '🎨',
    'level': 92,
    'category': 'frontend',
    'description': 'Expert CSS and Tailwind styling',
  },
  {
    'name': 'Framer Motion',
    'icon': '✨',
    'level': 85,
    'category': 'frontend',
    'description': 'Advanced animation capabilities',
  },
  // Backend
  {
    'name': 'Node.js',
    'icon': '🟢',
    'level': 89,
    'category': 'backend',
    'description': 'Expert Node.js backend development',
  },
  {
    'name': 'Python',
    'icon': '🐍',
    'level': 86,
    'category': 'backend',
    'description': 'Proficient Python development',
  },
  {
    'name': 'FastAPI',
    'icon': '⚡',
    'level': 84,
    'category': 'backend',
    'description': 'Advanced FastAPI framework skills',
  },
  {
    'name': 'MongoDB',
    'icon': '🍃',
    'level': 87,
    'category': 'backend',
    'description': 'Expert NoSQL database design',
  },
  // DevOps
  {
    'name': 'AWS',
    'icon': '☁️',
    'level': 91,
    'category': 'devops',
    'description': 'AWS Certified Solutions Architect',
  },
  {
    'name': 'Docker',
    'icon': '🐳',
    'level': 89,
    'category': 'devops',
    'description': 'Expert containerization',
  },
  {
    'name': 'Kubernetes',
    'icon': '⛵',
    'level': 85,
    'category': 'devops',
    'description': 'CKAD certified',
  },
  {
    'name': 'Google Cloud',
    'icon': '☁️',
    'level': 87,
    'category': 'devops',
    'description': 'GCP Professional Architect',
  },
];

// Projects Data
final List<Map<String, dynamic>> projectsData = [
  {
    'id': 1,
    'title': 'E-Commerce Platform',
    'description': 'Full-stack application with real-time inventory management and payment integration',
    'category': 'Full-Stack',
    'technologies': ['React', 'Node.js', 'MongoDB', 'Redis', 'AWS'],
    'image': '🛍️',
    'gradient': [Color(0xFF667eea), Color(0xFF764ba2)],
    'github': 'https://github.com/Moe-KyawAung/ecommerce',
    'link': '#',
    'highlights': [
      'Stripe & PayPal integration',
      'Real-time inventory sync',
      'AWS S3 storage',
      'Redis caching',
    ],
  },
  {
    'id': 2,
    'title': 'AI Analytics Dashboard',
    'description': 'Real-time data visualization with ML predictions and automated reports',
    'category': 'Data Science',
    'technologies': ['Python', 'FastAPI', 'React', 'PostgreSQL', 'Docker'],
    'image': '📊',
    'gradient': [Color(0xFFf093fb), Color(0xFFf5576c)],
    'github': 'https://github.com/Moe-KyawAung/analytics-dashboard',
    'link': '#',
    'highlights': [
      'ML model integration',
      'Real-time charts',
      'PDF export',
      'Docker containerized',
    ],
  },
  {
    'id': 3,
    'title': 'Android Chat App',
    'description': 'Real-time messaging with Firebase backend and end-to-end encryption',
    'category': 'Mobile',
    'technologies': ['Kotlin', 'Firebase', 'Jetpack', 'Room DB'],
    'image': '💬',
    'gradient': [Color(0xFF4facfe), Color(0xFF00f2fe)],
    'github': 'https://github.com/Moe-KyawAung',
    'link': '#',
    'highlights': [
      'Firebase Realtime DB',
      'Push notifications',
      'Image sharing',
      'User profiles',
    ],
  },
  {
    'id': 4,
    'title': 'Weather Forecast App',
    'description': 'Android weather app with location services and Jetpack Compose UI',
    'category': 'Mobile',
    'technologies': ['Kotlin', 'Compose', 'OpenWeatherMap', 'MVVM'],
    'image': '🌤️',
    'gradient': [Color(0xFFfa709a), Color(0xFFfee140)],
    'github': 'https://github.com/Moe-KyawAung',
    'link': '#',
    'highlights': [
      'Jetpack Compose',
      'Location services',
      'Weather API',
      '5-day forecast',
    ],
  },
];

// Certifications Data
final List<Map<String, dynamic>> certificationsData = [
  {
    'id': 1,
    'title': 'AWS Certified Solutions Architect - Professional',
    'issuer': 'Amazon Web Services',
    'date': '2023',
    'icon': '☁️',
    'color': Color(0xFFFF9900),
  },
  {
    'id': 2,
    'title': 'Google Cloud Professional Cloud Architect',
    'issuer': 'Google Cloud',
    'date': '2023',
    'icon': '☁️',
    'color': Color(0xFF4285F4),
  },
  {
    'id': 3,
    'title': 'Kubernetes Certified Application Developer (CKAD)',
    'issuer': 'Linux Foundation',
    'date': '2023',
    'icon': '⛵',
    'color': Color(0xFF326CE5),
  },
  {
    'id': 4,
    'title': 'C Programming Certification',
    'issuer': 'Programming Hub',
    'date': '2020',
    'icon': '💻',
    'color': Color(0xFF00599C),
  },
  {
    'id': 5,
    'title': 'Computer Vision using Python',
    'issuer': 'Programming Hub',
    'date': '2021',
    'icon': '👁️',
    'color': Color(0xFF3776AB),
  },
  {
    'id': 6,
    'title': 'Cyber Security Certification',
    'issuer': 'Programming Hub',
    'date': '2021',
    'icon': '🔒',
    'color': Color(0xFFEC1C24),
  },
];

// Experience Data
final List<Map<String, dynamic>> experienceData = [
  {
    'title': 'Android Developer',
    'company': 'Microsoft',
    'location': 'Remote',
    'type': 'Full-time',
    'startDate': '2023',
    'endDate': 'Present',
    'description': 'Developing enterprise Android applications',
    'icon': '🏢',
    'responsibilities': [
      'Developed and maintained Android applications',
      'Implemented clean UI designs',
      'Debugged and optimized applications',
      'Worked with APIs and third-party libraries',
      'Followed best practices for Android development',
    ],
  },
  {
    'title': 'Full-Stack Developer',
    'company': 'Freelance / Self-Projects',
    'location': 'Tachileik, Myanmar',
    'type': 'Freelance',
    'startDate': '2020',
    'endDate': 'Present',
    'description': 'Building web and mobile applications',
    'icon': '💼',
    'responsibilities': [
      'Designed full-stack web applications',
      'Implemented backend APIs',
      'Created responsive frontends',
      'Managed databases',
      'Deployed on cloud platforms',
    ],
  },
];

// Statistics
final List<Map<String, dynamic>> statsData = [
  {
    'label': 'Years of Experience',
    'value': '2+',
    'icon': '⏰',
  },
  {
    'label': 'Projects Completed',
    'value': '12+',
    'icon': '📦',
  },
  {
    'label': 'Certifications',
    'value': '6+',
    'icon': '🏆',
  },
  {
    'label': 'Client Satisfaction',
    'value': '100%',
    'icon': '😊',
  },
];
