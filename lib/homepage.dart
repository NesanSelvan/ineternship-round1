import 'package:flutter/material.dart';
import 'package:mock_round1/frontpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      // print(selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white12,
          elevation: 0,
          leading: IconButton(
            icon: Image.asset(
              "assets/drawer.png",
              color: Colors.grey.shade500,
              // color: Colors.red,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.question_answer_outlined,
                  color: Colors.grey.shade500,
                  // color: Colors.grey.shade500,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_sharp,
                  color: Colors.grey.shade500,
                ))
          ],
        ),
        body: const FrontPage(),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomPaint(
            painter: LinePainter(selectedIndex),
            child: BottomNavigationBar(
              elevation: 0,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.blue,
              // fixedColor: Colors.green,
              items: <BottomNavigationBarItem>[
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                      // color: selectedIndex == 0 ? Colors.blue : Colors.grey,
                    ),
                    label: 'Home'),
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.menu_book_outlined,
                      // color: Colors.grey,
                    ),
                    label: 'Learn'),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.widgets_outlined),
                  label: 'Hub',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble),
                  label: 'Chat',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/pro.png",
                    // height: 25,
                  ),
                  label: 'Profile',
                ),
              ],
              currentIndex: selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  final int selectedIndex;

  LinePainter(this.selectedIndex);

  @override
  void paint(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0;

    const lineHeight = .0;
    final lineWidth = size.width / 5;

    final startX = selectedIndex * lineWidth;
    const startY = 0.0;

    final endX = startX + lineWidth;
    const endY = 0.0;

    canvas.drawLine(Offset(startX, startY), Offset(endX, endY), linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
