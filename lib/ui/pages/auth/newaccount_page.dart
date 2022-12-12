import '../../../packages.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
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
                    "Create New Account",
                    style: TextStyle(
                      color: const Color(0xff2f363d),
                      fontSize: 25.sp,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Cobutor",
                    style: TextStyle(
                      color: const Color(0xff00a784),
                      fontSize: 16.sp,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusColor: Color(0xff00A784),
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusColor: Color(0xff00A784),
                      labelText: 'Company name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusColor: Color(0xff00A784),
                      labelText: 'Email ID',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusColor: Color(0xff00A784),
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusColor: Color(0xff00A784),
                      labelText: 'Date of birth',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Address',
                      focusColor: Color(0xff00A784),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 39.h,
                  ),
                  Button(
                    text: 'Continue',
                    ontap: () {},
                    colors: const Color(0xff00A784),
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
