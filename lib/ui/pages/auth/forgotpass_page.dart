import 'package:kabutor/packages.dart';


class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(390, 844),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: ScaffoldBackgound(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 39, left: 22, right: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Don’t Worry",
                    style: TextStyle(
                      color: const Color(0xff2f363d),
                      fontSize: 25.sp,
                      //fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "We are here to help",
                    style: TextStyle(
                      color: const Color(0xff00a784),
                      fontSize: 16.sp,
                      //fontFamily: "Lato",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 38.h,
                  ),
                  Text(
                    "Get a verification code",
                    style: TextStyle(
                      color: const Color(0xffff6767),
                      fontSize: 20.sp,
                      //fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 8.2.h,
                  ),
                  Text(
                    "To get a verification code, first confirm your Email Address / Phone Number to your account ******** ",
                    style: TextStyle(
                      color: const Color(0xff8d8e8f),
                      fontSize: 10.sp,
                      letterSpacing: 0.15,
                    ),
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Email'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 346.w,
                    height: 79.h,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Button(
                          colors: const Color(0xffFF6868),
                          text: 'Continue',
                          ontap: () {
                            Get.to(
                              const VerifacitionForgotPassPage(),
                            );
                          },
                        ),
                        SizedBox(height: 7.16.h),
                        Text(
                          "Follow the step to recover your ID.",
                          style: TextStyle(
                            color: const Color(0xff8d8e8f),
                            fontSize: 12.sp,
                            //fontFamily: "Lato",
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Container(
                    width: 341.w,
                    height: 1.h,
                    color: Palette.darkLightColor,
                  ),
                  Expanded(
                    child: Image.asset('assets/images/forgate.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
