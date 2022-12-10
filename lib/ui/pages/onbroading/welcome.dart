import '../../../packages.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(390, 844),
    );
    return Scaffold(
      body: Container(
        width: 390.w,
        height: 844.h,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xfff4fffc),
              Color(0xffeaf6f5),
              Color(0xffdbeeec),
              Color(0xffcafff3),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 149.h,
            ),
            SizedBox(
              width: 269.w,
              height: 213.h,
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
              height: 81.h,
            ),
            const Text(
              "Welcome to",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff2f363d),
                fontSize: 32,
                //fontFamily: "Lato",
                //fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 16.h),
            const Text(
              'Easy Way Manages Your Business',
              style: TextStyle(
                color: Color(0xcc24292e),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 34.h,
            ),
            const Button(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 390.w,
              height: 219.h,
              child: Image.asset('assets/images/city.png'),
            ),
          ],
        ),
      ),
    );
  }
}

