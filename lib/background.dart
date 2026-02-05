import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  final Widget child;

  const BackgroundGradient({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFF5F3FF), // from-purple-50
            Color(0xFFFDF2F8), // via-pink-50
            Color(0xFFEFF6FF), // to-blue-50
          ],
        ),
      ),
      child: child,
    );
  }
}
