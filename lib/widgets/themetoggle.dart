import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sri_hari_portfolio/provider/theme_provider.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return IconButton(
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Icon(
          themeProvider.themeMode == ThemeMode.dark
              ? Icons.light_mode
              : Icons.dark_mode,
          key: ValueKey(themeProvider.themeMode),
        ),
      ),
      onPressed: () => themeProvider.toggleTheme(),
    );
  }
}
