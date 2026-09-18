import 'package:flutter/material.dart';

class TaskTrackerScreen extends StatelessWidget {
  const TaskTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundImage: NetworkImage('https://thumb.wikimedia.org/wikipedia/commons/thumb/0/0c/Mercedes_W140_front_20071109.jpg/330px-Mercedes_W140_front_20071109.jpg?utm_source=ru.wikipedia.org&utm_campaign=parser&utm_content=thumbnail'),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Good Evening!', style: TextStyle(color: Colors.grey, fontSize: 12)),
                            Text('Veliev Djalal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF101828))),
                          ],
                        ),
                        const Spacer(),
                        _buildCircleIcon(Icons.search),
                        const SizedBox(width: 8),
                        _buildCircleIcon(Icons.notifications_none_outlined),
                      ],
                    ),
                    const SizedBox(height: 24),
                    _buildSectionHeader('My Weekly Tasks', '18 Tasks Pending'),
                    const SizedBox(height: 14),
                    SizedBox(
                      height: 190,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildWeeklyCard(
                            tag1: 'UI/UX Design',
                            tag1Bg: const Color(0xFFEDE7F6),
                            tag1Color: const Color(0xFF673AB7),
                            tag2: 'High',
                            tag2Bg: const Color(0xFFFFEBEE),
                            tag2Color: const Color(0xFFE53935),
                            title: 'Create a\nLanding Page',
                            date: 'Mon, 12 July 2022',
                            extraCount: '3+',
                          ),
                          const SizedBox(width: 14),
                          _buildWeeklyCard(
                            tag1: 'Development',
                            tag1Bg: const Color(0xFFFFF3E0),
                            tag1Color: const Color(0xFFFB8C00),
                            tag2: 'Low',
                            tag2Bg: const Color(0xFFE8F5E9),
                            tag2Color: const Color(0xFF43A047),
                            title: 'Develop a\nWebsite',
                            date: 'Mon, 30 July 2022',
                            extraCount: '2+',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildSectionHeader('Today\'s Tasks', '18 Tasks Pending'),
                    const SizedBox(height: 14),
                    _buildTodayTaskCard(
                      title: 'Design 2 App Screens',
                      subtitle: 'Crypto Wallet App',
                      date: 'Mon, 10 July 2022',
                      isCompleted: true,
                      extraCount: '1+',
                    ),
                    const SizedBox(height: 12),
                    _buildTodayTaskCard(
                      title: 'Design Homepage',
                      subtitle: 'Water Company Website',
                      date: 'Tue, 11 July 2022',
                      isCompleted: false,
                      extraCount: '2+',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Color(0xFFEEEEEE))),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _BottomNavItem(icon: Icons.home_outlined, label: 'Home', isSelected: true),
                  _BottomNavItem(icon: Icons.folder_open, label: 'Projects'),
                  _BottomNavItem(icon: Icons.calendar_today_outlined, label: 'Calendar'),
                  _BottomNavItem(icon: Icons.chat_bubble_outline, label: 'Messages', hasBadge: true),
                  _BottomNavItem(icon: Icons.people_outline, label: 'Members'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCircleIcon(IconData icon) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Icon(icon, color: Colors.black87, size: 20),
    );
  }

  Widget _buildSectionHeader(String title, String subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF101828))),
            Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
        Row(
          children: [
            Icon(Icons.tune, size: 20, color: Colors.grey.shade700),
            const SizedBox(width: 14),
            Icon(Icons.add, size: 22, color: Colors.grey.shade700),
          ],
        )
      ],
    );
  }

  Widget _buildWeeklyCard({
    required String tag1,
    required Color tag1Bg,
    required Color tag1Color,
    required String tag2,
    required Color tag2Bg,
    required Color tag2Color,
    required String title,
    required String date,
    required String extraCount,
  }) {
    return Container(
      width: 220,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildPill(tag1, tag1Bg, tag1Color),
              const SizedBox(width: 8),
              _buildPill(tag2, tag2Bg, tag2Color),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF101828), height: 1.2),
          ),
          const Spacer(),
          Row(
            children: [
              _buildAvatarStack(extraCount),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.calendar_month_outlined, size: 16, color: Colors.grey.shade600),
              const SizedBox(width: 6),
              Text(date, style: TextStyle(color: Colors.grey.shade600, fontSize: 11)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTodayTaskCard({
    required String title,
    required String subtitle,
    required String date,
    required bool isCompleted,
    required String extraCount,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: isCompleted ? TextDecoration.lineThrough : null,
                      color: const Color(0xFF101828),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: isCompleted ? const Color(0xFF4C6FFF) : Colors.transparent,
                  shape: BoxShape.circle,
                  border: isCompleted ? null : Border.all(color: Colors.grey.shade400, width: 2),
                ),
                child: isCompleted ? const Icon(Icons.check, color: Colors.white, size: 18) : null,
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(height: 1, color: Color(0xFFF0F0F0)),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.calendar_month_outlined, size: 16, color: Colors.grey.shade600),
                  const SizedBox(width: 6),
                  Text(date, style: TextStyle(color: Colors.grey.shade600, fontSize: 11)),
                ],
              ),
              _buildAvatarStack(extraCount),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPill(String text, Color bg, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(20)),
      child: Text(text, style: TextStyle(color: textColor, fontSize: 11, fontWeight: FontWeight.w600)),
    );
  }

  Widget _buildAvatarStack(String extra) {
    return Row(
      children: [
        const CircleAvatar(radius: 12, backgroundImage: NetworkImage('https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=100')),
        Transform.translate(
          offset: const Offset(-8, 0),
          child: const CircleAvatar(radius: 12, backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=100')),
        ),
        Transform.translate(
          offset: const Offset(-16, 0),
          child: CircleAvatar(
            radius: 12,
            backgroundColor: const Color(0xFFFFA726),
            child: Text(extra, style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final bool hasBadge;

  const _BottomNavItem({required this.icon, required this.label, this.isSelected = false, this.hasBadge = false});

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? const Color(0xFF4C6FFF) : Colors.grey;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(icon, color: color, size: 22),
            if (hasBadge)
              Positioned(
                right: -2,
                top: -2,
                child: Container(
                  width: 7,
                  height: 7,
                  decoration: const BoxDecoration(color: Color(0xFFFFA726), shape: BoxShape.circle),
                ),
              ),
          ],
        ),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(color: color, fontSize: 11, fontWeight: isSelected ? FontWeight.bold : FontWeight.normal)),
      ],
    );
  }
}