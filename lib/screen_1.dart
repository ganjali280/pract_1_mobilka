import 'package:flutter/material.dart';

class MedinowScreen extends StatelessWidget {
  const MedinowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryTeal = Color(0xFF03989E);

    return Scaffold(
      backgroundColor: primaryTeal,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 1),
            const Text(
              'medinow',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Meditate With Us!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        shape: const StadiumBorder(),
                        elevation: 0,
                      ),
                      child: const Text('Sign in with Apple', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFCCFAF6),
                        foregroundColor: Colors.black87,
                        shape: const StadiumBorder(),
                        elevation: 0,
                      ),
                      child: const Text('Continue with Email or Phone', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                    ),
                  ),
                  const SizedBox(height: 14),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Continue With Google',
                      style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 1),
            Container(
              height: 250,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'images/meditate.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}