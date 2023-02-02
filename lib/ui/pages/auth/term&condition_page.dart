import 'package:kabutor/packages.dart';

class TermCondition extends StatelessWidget {
  const TermCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 22, right: 22, top: 39),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Terms & Conditions '),
            Text('Last update decmber 04, 2022'),
            Text('Please read these terms and conditins carefully before using our application')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => Home());
        },
        child: const Text('Agree'),
      ),
    );
  }
}
