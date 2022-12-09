
import '../../../packages.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(390, 844),
    );
    return Container(
      width: 346.w,
      height: 54.84.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
        color: const Color(0xff00a784),
      ),
      child: TextButton(
        onPressed: () {
          Get.to(const SignIn());
        },
        child: const Text(
          "LET’S GET STARTED",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            //fontFamily: "Lato",
            //fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
