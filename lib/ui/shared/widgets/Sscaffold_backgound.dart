import '../../../packages.dart';
class ScaffoldBackgound extends StatelessWidget {
  final Widget? child;
  const ScaffoldBackgound({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(gradient: Palette.scaffoldGradient),
        child: child);
  }
}