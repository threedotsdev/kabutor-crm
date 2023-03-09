import 'package:kabutor/packages.dart';

class CreateContact extends StatelessWidget {
  const CreateContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackgound(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 19,
              right: 19,
            ),
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
                          clipBehavior: Clip.none,
                          children: [
                            Container(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
