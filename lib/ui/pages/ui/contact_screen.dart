import 'package:kabutor/packages.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(390, 844),
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 39.h,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 39.h,
                        width: 133.w,
                        child: Row(
                          children: [
                            const CircleAvatar(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('OXSMIC'),
                                Text('Rokibul Hasan')
                              ],
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.notifications,
                        color: Palette.themeColor,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                const Text('Contact'),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  width: double.maxFinite,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Palette.scaffold,
                    //const Color(0x19676b6f),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Palette.themeColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                const Text('Active Lead'),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 105.h,
                  width: double.maxFinite,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 3,
                        childAspectRatio: 7 / 9,
                        crossAxisCount: 1,
                      ),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, index) {
                        return const LeadCrad();
                      }),
                ),
                SizedBox(
                  height: 7.h,
                ),
               const Text('Full Contact List'),
                SizedBox(
                  height: 11.h,
                ),
                SizedBox(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: ListView.builder(
                    itemCount: 10,
                    
                   // scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context,int index) {
                      return const ContactList();
                    },
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
