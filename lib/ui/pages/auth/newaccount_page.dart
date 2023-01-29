import 'package:kabutor/ui/pages/auth/varification_page.dart';

import '../../../packages.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    var nameController = TextEditingController();
    var comapnyController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var dateController = TextEditingController();
    var addressController = TextEditingController();
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
                      color: Palette.darkLightColor,
                      fontSize: 25.sp,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Kobutor",
                    style: TextStyle(
                      color: Palette.themeColor,
                      fontSize: 16.sp,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) => value.toString().length <= 4
                                ? "Name Should Be Minimum 4 Letter"
                                : null,
                            controller: nameController,
                            decoration: const InputDecoration(
                              focusColor: Palette.themeColor,
                              labelText: 'Name',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TextFormField(
                            validator: (value) => value.toString().length <= 4
                                ? "Name Should Be Minimum 4 Letter"
                                : null,
                            controller: comapnyController,
                            decoration: const InputDecoration(
                              focusColor: Palette.themeColor,
                              labelText: 'Company name',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TextFormField(
                            validator: (value) => value.toString().length <=5
                                ? "Enter Your Name"
                                : null,
                            controller: emailController,
                            decoration: const InputDecoration(
                              focusColor: Palette.themeColor,
                              labelText: 'Email ID',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TextFormField(
                            validator: (value) => value.toString().length <= 6
                                ? "Password Should Be Minimum 6 Letter"
                                : null,
                            controller: passwordController,
                            decoration: const InputDecoration(
                              focusColor: Palette.themeColor,
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TextFormField(
                            validator: (value) => value.toString().isDateTime
                                ? "Enter Your Date Of Birth"
                                : null,
                            controller: dateController,
                            decoration: const InputDecoration(
                              labelText: 'Date Of Birth',
                              focusColor: Palette.themeColor,
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          TextFormField(
                            controller: addressController,
                            decoration: const InputDecoration(
                              labelText: 'Address',
                              focusColor: Palette.themeColor,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 39.h,
                  ),
                  Button(
                    text: 'Continue',
                    ontap: () {
                      if (formkey.currentState!.validate()) {
                        Get.to(() => const VerifacitionPage());
                      }
                    },
                    colors: Palette.themeColor,
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
