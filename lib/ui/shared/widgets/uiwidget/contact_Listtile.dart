import '../../../../packages.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color:const Color(0xff00A784).withOpacity(0.1),
      child: ListTile(
        leading: const CircleAvatar(),
        title: const Text('Dibakar S.T Dipu'),
        subtitle: const Text('+880 1817-327399'),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Palette.themeColor,
                borderRadius: BorderRadius.circular(16)
              ),
              height: 10.h,
              width: 28.w,
              
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Active',
                  style: TextStyle(
                    fontSize: 6.sp,
                    //color: Colors.white,
                  ),
                ),
              ),
            ),
            Text(
              '16 Dec, 2022',
              style: TextStyle(fontSize: 8.sp),
            )
          ],
        ),
      ),
    );
  }
}
