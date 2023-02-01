import '../../../../packages.dart';

class LeadCrad extends StatelessWidget {
  const LeadCrad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: 134.w,
      decoration: BoxDecoration(
        color:const Color(0x1900a783),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 18.r,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 4.h,
                ),
                Text(
                  'ED-NET.NET',
                  style: TextStyle(fontSize: 13.sp),
                )
              ],
            ),
            Text(
              'ED DIPU',
              style: TextStyle(fontSize: 10.sp),
            ),
            SizedBox(
              height: 6.h,
            ),
            const Text(
              'Sunway GEO Avenue , Sunway City',
              style: TextStyle(fontSize: 6),
            ),
            SizedBox(
              height: 6.h,
            ),
            const Text(
              'ebdipu@gmail.com',
              style: TextStyle(fontSize: 6),
            ),
            SizedBox(
              height: 6.h,
            ),
            const Text(
              '+880 1817-327399',
              style: TextStyle(fontSize: 6),
            ),
          ],
        ),
      ),
    );
  }
}
