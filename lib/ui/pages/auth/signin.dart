

import '../../../packages.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(390, 844),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
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
                  Color(0xffcafff4),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 39, left: 22),
                  child: SizedBox(
                    height: 70.h,
                    width: 210.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Log in or Sing up",
                          style: TextStyle(
                            color: const Color(0xff2f363d),
                            fontSize: 25.sp,
                            //fontFamily: "Lato",
                            //fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Hello World\n",
                          style: TextStyle(
                            color: const Color(0xff00a784),
                            fontSize: 16.sp,
                            //fontFamily: "Lato",
                            //fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 108.h),
                Padding(
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  child: Container(
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
                      color:const Color(0xff00a784),
                    ),
                    child: const Center(
                      child: Text(
                        "CONTINUE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          //fontFamily: "Lato",
                          //fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 28.16),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 22,
                    right: 22,
                  ),
                  child: SizedBox(
                    width: 342.w,
                    height: 12.h,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.black,
                          width: 161.w,
                          height: 1.h,
                        ),
                        const SizedBox(width: 2.50),
                        const Text(
                          "OR",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0x7f2f363d),
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(width: 2.50),
                        Container(
                          color: Colors.black,
                          width: 161.w,
                          height: 1.w,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 28.16),
                Padding(
                  padding: const EdgeInsets.only(left: 22,right: 22),
                  child: Container(
                    width: 346.w,
                    height: 54.84.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color:const Color(0xff2f363d),
                        width: 1,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      //color: Palette.themeColor,
                    ),
                  ),
                ),
                const SizedBox(height: 20.23),
                SizedBox(
                  width: 346.w,
                  height: 54.84.h,
                  child: Row(
                    children: [
                      Container(
                        width: 346,
                        height: 54.84,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color:const Color(0xff3b3e51),
                            width: 1,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color:const Color(0x003b3d51),
                        ),
                        child: Stack(
                          children: [
                            const Positioned.fill(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 317.14,
                                  height: 29.42,
                                  child: Text(
                                    "Google",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 29,
                              top: 9.93,
                              child: Container(
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const FlutterLogo(size: 34),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
