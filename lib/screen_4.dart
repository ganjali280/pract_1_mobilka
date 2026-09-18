import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryBlue = Color(0xFF4C5BFF);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFEEF2FF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.arrow_back_ios_new, size: 16, color: primaryBlue),
          ),
        ),
        title: const Text('3D Design Basic', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF101828))),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS6cyqvbyuDU-C9sDGFbQip8c_lGe-Nm9jpj0MGX9Ts3tUoJ9k3',
                      height: 190,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      _buildPillBadge(icon: Icons.people_alt_outlined, text: '4.569', bg: const Color(0xFFEEF0FD), color: const Color(0xFF4C5BFF)),
                      const SizedBox(width: 8),
                      _buildPillBadge(icon: Icons.star, text: '4.9', bg: const Color(0xFFEEF0FD), color: const Color(0xFF4C5BFF)),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: primaryBlue,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Text('Best Seller', style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text('3D Design Basic', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF101828))),
                  const SizedBox(height: 8),
                  const Text(
                    'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.',
                    style: TextStyle(color: Color(0xFF667085), fontSize: 14, height: 1.4),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('24 Lessons (20 hours)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF101828))),
                      TextButton(
                        onPressed: () {},
                        child: const Text('See all', style: TextStyle(color: primaryBlue, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 54,
                            height: 54,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF536DFE), Color(0xFF8E24AA)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const Icon(Icons.play_arrow, color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 14),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Introduction to 3D', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF101828))),
                              SizedBox(height: 4),
                              Text('20 mins', style: TextStyle(color: Colors.grey, fontSize: 12)),
                            ],
                          ),
                        ),
                        const Icon(Icons.check_circle_outline, color: primaryBlue, size: 22),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryBlue,
                  shape: const StadiumBorder(),
                  elevation: 0,
                ),
                child: const Text('Enroll - \$24.99', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPillBadge({required IconData icon, required String text, required Color bg, required Color color}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 4),
          Text(text, style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}