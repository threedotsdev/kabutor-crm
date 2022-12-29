import '../../../packages.dart';

class TextField extends StatelessWidget {
  const TextField({
    
    Key? key,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    return TextFormField(
      controller: emailController,
      validator: (value) => value == "" ? "Please Write Email" : null,
      decoration: const InputDecoration(
        focusColor: Palette.themeColor,
        labelText: 'Email',
        border: OutlineInputBorder(
          
        ),
      ),
    );
  }
}
