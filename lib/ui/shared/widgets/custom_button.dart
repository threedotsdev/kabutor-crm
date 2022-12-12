// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import '../../../packages.dart';

class Button extends StatelessWidget {
  String text;
  VoidCallback ontap;
  dynamic colors;
  Button({
    Key? key,
    required this.text,
    required this.ontap,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 346.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
        color: colors,
      ),
      child: TextButton(
        onPressed: ontap,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            //fontFamily: "Lato",
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
