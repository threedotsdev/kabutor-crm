import 'package:kabutor/packages.dart';

class GoogleAuthButton extends StatelessWidget {
  VoidCallback onTap;

   GoogleAuthButton({
    Key? key, required this.onTap
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 346.w,
        height: 54.84.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xff2f363d),
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.transparent,
              // color: Color(0x3f000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
          //color: Colors.transparent,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 51.w,
            ),
            Image.asset('assets/icons/googleicon.png'),
            SizedBox(
              width: 80.w,
            ),
            Image.asset('assets/images/google.png'),
          ],
        ),
      ),
    );
  }
}
