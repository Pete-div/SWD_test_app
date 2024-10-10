




import '../../../__lib.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  bool isObscure = false;
  void updateObscuredPassword() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AuthContainer(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            122.hi,
            ContainerWidget(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: AppColors.grey, // Darker background for placeholder
                borderRadius: BorderRadius.circular(8), // Rounded square
              ),
            ),
            30.hi,
            AeonikText(
              'Welcome back 👋🏾',
              color: AppColors.white,
              weight: FontWeight.w300,
              size: 36,
              height: 44,
            ),
            72.hi,
            TextFieldWithHeader(
              textController: emailController,
              headerText: 'Email Address',
              hintText: 'Enter Email address',
            ),
            24.hi,
            TextFieldWithHeader(
              textController: passwordController,
              headerText: 'Password',
              hintText: 'Enter Password',
              obscurePassword: isObscure,
              suffixIcon: GestureDetector(
                onTap: () {
                  updateObscuredPassword();
                },
                child: isObscure
                    ? Icon(
                        Icons.visibility_off_sharp,
                        color: AppColors.white,
                      )
                    : Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColors.white,
                      ),
              ),
            ),
            8.hi,
            Align(
                alignment: Alignment.centerLeft,
                child: AeonikText(
                  'Forgot Password?',
                  weight: FontWeight.w400,
                  size: 16,
                  height: 20.3,
                  color: AppColors.grey2,
                )),
            32.hi,
            ActionButton(btnText: 'Sign in',onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DashBoardScreen()),);
            },),
            16.hi,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AeonikText(
                  'I don’t have an account,',
                  weight: FontWeight.w400,
                  size: 14,
                  color: AppColors.grey2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: GradientText(
                    ' Create account',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFFF76B1C), // Orange
                        Color(0xFFEFA057), // Pinkish-red
                      ],
                    ),
                  ),
                ),
              ],
            )
          ]).padHorizontal(23),
    );
  }
}


class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  GradientText(this.text, {required this.style, required this.gradient});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style.copyWith(
            color: Colors.white,
            fontSize: 16), // Set text color to white, as it's masked by shader
      ),
    );
  }
}
