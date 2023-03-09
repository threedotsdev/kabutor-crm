import '../../../packages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 29,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 39.h,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 39.h,
                      width: 138.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('OXSMIC'),
                              Text('Rokibul Hasan'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 182.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0x19676a6e),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                          Icons.search,
                          color: Palette.themeColor,
                        )),
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
              SizedBox(
                height: 20.h,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text('23 January 2022'), Text('Monday')],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 78.h,
                width: double.maxFinite,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 12,
                    childAspectRatio: 3 / 2,
                    crossAxisCount: 1,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return DateCard(date: index.toString(), day: 'sun');
                  },
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                width: double.maxFinite,
                height: 159,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Palette.darkColor,
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Container(
                width: double.maxFinite,
                height: 142,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Palette.themeColor,
                    width: 1,
                  ),
                ),
              ),
              SizedBox(
                    height: 17.h,
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 211.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Palette.scaffold
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
