import 'package:kabutor/packages.dart';

class Home extends StatelessWidget {
  BottomnavigationController bottomnavigationController =
      Get.put(BottomnavigationController());
  Home({super.key});
  final screen = [
    const Text('Index 0: Home'),
    const Text('Index 1: Business'),
    const Text('Index 2: School'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
