import '../../../packages.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(390, 844),
    );
    var formkey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: ScaffoldBackgound(
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
                    "Log in or Sing up",
                    style: TextStyle(
                      color: const Color(0xff2f363d),
                      fontSize: 25.sp,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Kabutor",
                    style: TextStyle(
                      color: const Color(0xff00a784),
                      fontSize: 16.sp,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 108.h),
                  Form(
                    key: formkey,
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) => value.toString().isEmail
                          ? "Please Write Email"
                          : null,
                      // value == "" ? "Please Write Email" : null,
                      decoration: const InputDecoration(
                        focusColor: Color(0xff00A784),
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Button(
                    colors: const Color(0xff00A784),
                    ontap: () {
                      if (formkey.currentState!.validate()) {
                        Get.to(
                          () => const SignInPass(),
                        );
                      }
                    },
                    text: 'CONTINUE',
                  ),
                  const SizedBox(height: 28.16),
                  SizedBox(
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
                  const SizedBox(height: 28.16),
                  Container(
                    width: 346.w,
                    height: 54.84.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        // color: const Color(0xff2f363d),
                        width: 1,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          //color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      //color: Palette.themeColor,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 51.w,
                        ),
                        Image.asset(
                          'assets/icons/phonelogo.png',
                          height: 34,
                          width: 34,
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        Image.asset('assets/images/phone.png'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.23),
                  GoogleAuthButton(
                    onTap: () {
                      AuthServies().signWithGoogle();
                    },
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
