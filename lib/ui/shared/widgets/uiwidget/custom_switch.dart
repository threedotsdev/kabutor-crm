import '../../../../packages.dart';

class MyController extends GetxController {
  var switchValue = false.obs;
}

class CustomSwitch extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;

  const CustomSwitch({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        width: 48.w,
        height: 22.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: value ? Palette.redColor : Palette.darkColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(2.h),
          child: Align(
            alignment: value ? Alignment.centerRight : Alignment.centerLeft,
            child: Stack(
              children: [
                Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Palette.themeColor,
                  ),
                ),
                Positioned(
                  top: 4.h,left: 5.h,
                  child: Container(
                    width: 10.w,
                    height: 10.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Palette.scaffold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final MyController myController = Get.put(MyController());

  MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomSwitch(
          value: myController.switchValue.value,
          onChanged: (value) => myController.switchValue.value = value,
        ));
  }
}
