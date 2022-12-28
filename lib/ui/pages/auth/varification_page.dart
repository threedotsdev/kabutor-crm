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
                OtpTextField(
                  numberOfFields: 5,
                  focusedBorderColor: const Color(0xffff6767),
                  fieldWidth: 60.w,
                  enabledBorderColor: const Color(0xff00A784),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {}, // end onSubmit
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Row(
                    children: [
                      Text(
                        "Didn’t get a code?",
                        style: TextStyle(
                          fontSize: 12.sp,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Resend'),
                      ),
                    ],
                  ),
                ),
                
                Button(
                  text: 'VERIFY',
                  ontap: () {},
                  colors: const Color(0xff00a784),
                ),
                SizedBox(
                  height: 21.h,
                ),
                Button(
                  text: 'CANCEL',
                  ontap: () {},
                  colors: const Color(0xff2F363D),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
