import '../../../packages.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  static GlobalKey<FormState> formkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   // var formkey = GlobalKey<FormState>();
    ScreenUtil.init(
      context,
      designSize: const Size(390, 844),
    );

    
    return SafeArea(
      child: Scaffold(
        body: ScaffoldBackgound(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 39,
              left: 22,
              right: 22,
            ),
            child: SingleChildScrollView(
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
                        color: Palette.themeColor,
                        fontSize: 16.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 108.h),
                    Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            validator: (value) => value.toString().length <= 4
                                ? "Name Should Be Minimum 4 Letter"
                                : null,
                            // value == "" ? "Please Write Email" : null,
                            decoration: const InputDecoration(
                              focusColor: Palette.themeColor,
                              labelText: 'Email',
                              border: OutlineInputBorder(),
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
                        ],
                      ),
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
                    Container(
                      width: 346.w,
                      height: 54.84.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xff2f363d),
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.transparent,
                            // color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                        //color: Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 51.w,
                          ),
                          Image.asset('assets/icons/googleicon.png'),
                          SizedBox(
                            width: 80.w,
                          ),
                          Image.asset('assets/images/google.png'),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
