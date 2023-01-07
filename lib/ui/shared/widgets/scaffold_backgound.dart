// ignore_for_file: file_names

import '../../../packages.dart';

class ScaffoldBackgound extends StatelessWidget {
  final Widget? child;
  const ScaffoldBackgound({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(390, 844),
    );
    return Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(gradient: Palette.scaffoldGradient),
        child: child);
  }
}
