import 'package:kabutor/packages.dart';

class VerifacitionPage extends StatelessWidget {
  const VerifacitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackgound(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 39,
              left: 22,
              right: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verification",
                  style: TextStyle(
                    color: const Color(0xff24292e),
                    fontSize: 25.sp,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Code",
                  style: TextStyle(
                    color: const Color(0xff00a784),
                    fontSize: 16.sp,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 67.h,
                ),
                Text(
                  "Please Check your email",
                  style: TextStyle(
                    color: const Color(0xff24292e),
                    fontSize: 16.sp,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "We’ve sent a recovery code to mahe@gmail.com",
                  style: TextStyle(
                    color: const Color(0xff2f363d),
                    fontSize: 12.sp,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 21.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 60,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xffff6868),
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xffff6868),
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xffff6868),
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xffff6868),
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xffff6868),
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Didn’t get a code? Resend",
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Button(
                  text: 'VERIFY',
                  ontap: () {},
                  colors:const Color(0xffFF6868),
                ),
                SizedBox(
                  height: 21.h,
                ),
                Button(
                  text: 'CANCEL',
                  ontap: () {},
                  colors:const Color(0xff2F363D),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
