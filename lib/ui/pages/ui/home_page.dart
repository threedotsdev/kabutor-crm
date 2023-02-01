import 'package:kabutor/packages.dart';
import 'package:kabutor/ui/pages/ui/contact_screen.dart';
import 'package:kabutor/ui/pages/ui/home_screen.dart';
import 'package:kabutor/ui/pages/ui/note_screen.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  BottomnavigationController bottomnavigationController =
      Get.put(BottomnavigationController());
  Home({super.key});
  final screen = [
    const HomeScreen(),
    const ContactScreen(),
    const NoteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: bottomnavigationController.currentIndex.value,
          children: screen,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: 'Contact',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note),
              label: 'Note',
            ),
          ],
          currentIndex: bottomnavigationController.currentIndex.value,
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            bottomnavigationController.currentIndex(index);
          },
        ),
      ),
    );
  }
}
