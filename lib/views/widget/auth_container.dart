import '../../__lib.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({
    required this.body,
    super.key,
  });
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity ,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Login.png'), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: body,
      )
    ));
  }
}