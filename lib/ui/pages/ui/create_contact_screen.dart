import 'package:kabutor/packages.dart';


class CreateContact extends StatelessWidget {
  const CreateContact({super.key});

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
      body: ScaffoldBackgound(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 19,
              right: 19,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create New Contact',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  const Text(
                    'Fill up the box with your new lead information',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  SizedBox(
                    height: 115.h,
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 14,
                            color: Palette.themeColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Stack(
                            
                            children: [
                              Container(
                                //clipBehavior: Clip.antiAlias,
                                height: 101.h,
                                width: 101.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 3.h,
                                    color: Palette.themeColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7.h,
                                right: 6.h,
                                child: const Icon(Icons.camera_alt),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'Date : 22/01/2023',
                          style: TextStyle(
                            fontSize: 10,
                            color: Palette.themeColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 48.h,
                          width: double.infinity,
                          child: TextFormField(
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
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          height: 48.h,
                          width: double.maxFinite,
                          child: TextFormField(
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
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          height: 48.h,
                          width: double.maxFinite,
                          child: TextFormField(
                            validator: (value) => value.toString().length <= 5
                                ? "Enter Your Name"
                                : null,
                            controller: emailController,
                            decoration: const InputDecoration(
                              focusColor: Palette.themeColor,
                              labelText: 'Email ID',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          height: 48.h,
                          width: double.maxFinite,
                          child: TextFormField(
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
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          height: 48.h,
                          width: double.maxFinite,
                          child: TextFormField(
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
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          height: 48.h,
                          width: double.maxFinite,
                          child: TextFormField(
                            controller: addressController,
                            decoration: const InputDecoration(
                              labelText: 'Address',
                              focusColor: Palette.themeColor,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.h,),
                  SizedBox(
                    height: 22.h,
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Active'),
                       MyWidget(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
