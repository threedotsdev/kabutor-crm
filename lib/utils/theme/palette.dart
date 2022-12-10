import '../../packages.dart';

class Palette {
  static const Color scaffold = Color(0xFFEDEDED);
  static const Color themeColor = Color(0xff00A784);
  static const Color greyColor = Color(0xff8D8E8F);
  static const Color darkColor = Color(0xff24292E);
  static const Color darkLightColor = Color(0xff2F363D);
  static const Color redColor = Color(0xffFF6767);

  static const LinearGradient scaffoldGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFF5FFFD),
      Color(0xffEAF6F5),
      Color(0xffDBEEEC),
      Color(0xffCAFFF4),
    ],
  );
}
