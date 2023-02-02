import '../../../../packages.dart';

class DateCard extends StatelessWidget {
  DateCard({super.key, required this.date, required this.day});

  String date;
  String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51,
      height: 78,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
        color: Palette.themeColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(date),
          Text(day),
        ],
      ),
    );
  }
}
