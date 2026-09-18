import 'package:flutter/material.dart';

import 'screen_1.dart';
import 'screen_2.dart';
import 'screen_3.dart';
import 'screen_4.dart';

void main() {
  runApp(const FigmaPracticumApp());
}

class FigmaPracticumApp extends StatelessWidget {
  const FigmaPracticumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Figma Layouts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.white,
      ),
      builder: (context, child) {
        final isDesktop = MediaQuery.of(context).size.width > 500;
        if (!isDesktop) return child!;

        return Container(
          color: const Color(0xFF1E1E24),
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Container(
                width: 393,
                height: 852,
                margin: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(48),
                  border: Border.all(color: const Color(0xFF2D2D35), width: 8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 35,
                      offset: Offset(0, 15),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Stack(
                    children: [
                      MediaQuery(
                        data: MediaQuery.of(context).copyWith(
                          size: const Size(393, 852),
                          padding: const EdgeInsets.only(top: 44, bottom: 34),
                        ),
                        child: child!,
                      ),
                      Positioned(
                        top: 11,
                        left: 0,
                        right: 0,
                        child: IgnorePointer(
                          child: Center(
                            child: Container(
                              width: 120,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 0,
                        right: 0,
                        child: IgnorePointer(
                          child: Center(
                            child: Container(
                              width: 135,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      home: const MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedPageIndex = 0;

  final List<Widget> _pages = const [
    SimpleLayoutsPage(),
    ComplexLayoutsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedPageIndex,
        onDestinationSelected: (idx) => setState(() => _selectedPageIndex = idx),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.looks_one_outlined),
            selectedIcon: Icon(Icons.looks_one),
            label: 'Легкие макеты',
          ),
          NavigationDestination(
            icon: Icon(Icons.looks_two_outlined),
            selectedIcon: Icon(Icons.looks_two),
            label: 'Сложные макеты',
          ),
        ],
      ),
    );
  }
}

class SimpleLayoutsPage extends StatelessWidget {
  const SimpleLayoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Легкие макеты', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Color(0xFF028784),
            labelColor: Color(0xFF028784),
            tabs: [
              Tab(text: 'Medinow'),
              Tab(text: 'Organizer'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MedinowScreen(),
            OrganizerScreen(),
          ],
        ),
      ),
    );
  }
}

class ComplexLayoutsPage extends StatelessWidget {
  const ComplexLayoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Сложные макеты', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Color(0xFF5669FF),
            labelColor: Color(0xFF5669FF),
            tabs: [
              Tab(text: 'Task Tracker'),
              Tab(text: '3D Design Basic'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TaskTrackerScreen(),
            CourseDetailScreen(),
          ],
        ),
      ),
    );
  }
}