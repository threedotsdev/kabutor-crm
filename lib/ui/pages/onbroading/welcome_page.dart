import '../../../packages.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackgound(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.15),
                SizedBox(height: Get.height * 0.25, child: const KabutorLogo()),
                SizedBox(height: Get.height * 0.05),
                
                const Text(
                  'Welcome To',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Easy Way Manages Your Business',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Palette.darkLightColor),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Button(
                    colors: const Color(0xff00A784),
                    text: "LET'S GET STARTED",
                    ontap: () {
                      Get.to(const SignIn());
                    },
                  ),
                ),
                const Spacer(),
                Image.asset('assets/images/city.png')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
