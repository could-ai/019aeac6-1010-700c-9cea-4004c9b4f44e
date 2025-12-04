import 'package:flutter/material.dart';
import 'package:couldai_user_app/home_page.dart';

void main() {
  runApp(const NudeApp());
}

class NudeApp extends StatelessWidget {
  const NudeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nude Aesthetic',
      debugShowCheckedModeBanner: false,
      theme: _buildNudeTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }

  ThemeData _buildNudeTheme() {
    // Nude / Earth tone palette
    const primaryColor = Color(0xFFA98467); // Warm Brown
    const secondaryColor = Color(0xFFD8C3B5); // Beige
    const backgroundColor = Color(0xFFF3E5DC); // Light Cream
    const surfaceColor = Color(0xFFFDFBF7); // Off-white
    const textColor = Color(0xFF6F4E37); // Dark Coffee

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        primary: primaryColor,
        secondary: secondaryColor,
        surface: surfaceColor,
        onSurface: textColor,
        background: backgroundColor,
        onBackground: textColor,
      ),
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: textColor),
      ),
      cardTheme: CardTheme(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: textColor, fontWeight: FontWeight.w300),
        displayMedium: TextStyle(color: textColor, fontWeight: FontWeight.w300),
        bodyLarge: TextStyle(color: textColor),
        bodyMedium: TextStyle(color: textColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
      ),
    );
  }
}
