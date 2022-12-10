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
      height: 844.h,
      width: 390.w,
        decoration: const BoxDecoration(gradient: Palette.scaffoldGradient),
        child: child);
  }
}