import 'package:flutter/material.dart';

class OrganizerScreen extends StatelessWidget {
  const OrganizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryBlue = Color(0xFF5669FF);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: primaryBlue),
        title: const Text('Organizer', style: TextStyle(color: Color(0xFF120D26), fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: const Color(0xFFECEEFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.more_vert, color: primaryBlue, size: 20),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 12),
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 54,
                    backgroundImage: NetworkImage('https://stanisland.com/wp-content/uploads/2026/02/img_0098.jpg'),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              'Veliev Djalal',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF120D26)),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatColumn('2.368', 'Followers'),
                Container(height: 30, width: 1, color: Colors.grey.shade300),
                _buildStatColumn('346', 'Following'),
                Container(height: 30, width: 1, color: Colors.grey.shade300),
                _buildStatColumn('13', 'Events'),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person_add_alt_1, size: 18, color: Colors.white),
                    label: const Text('Follow', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryBlue,
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      shape: const StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.chat_bubble_outline, size: 18, color: primaryBlue),
                    label: const Text('Messages', style: TextStyle(color: primaryBlue, fontWeight: FontWeight.w600)),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: primaryBlue, width: 1.5),
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      shape: const StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryBlue,
                      shape: const StadiumBorder(),
                      elevation: 0,
                    ),
                    child: const Text('About', style: TextStyle(color: Colors.white, fontSize: 13)),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: primaryBlue),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('Events', style: TextStyle(color: primaryBlue, fontSize: 13)),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: primaryBlue),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('Reviews', style: TextStyle(color: primaryBlue, fontSize: 13)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('About', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF120D26))),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Color(0xFF747688), fontSize: 14, height: 1.5),
                children: [
                  TextSpan(
                    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  ),
                  TextSpan(
                    text: '        Read more...',
                    style: TextStyle(color: primaryBlue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String count, String label) {
    return Column(
      children: [
        Text(count, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF120D26))),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Color(0xFF747688), fontSize: 13)),
      ],
    );
  }
}