

import '../../../__lib.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final referCodeController = TextEditingController();
  bool isObscure = false;
  void updateObscuredPassword() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AuthContainer(
      body: SafeArea(
        child: Column(
          children: [
            60.hi,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: AbsorbPointer(
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.grey2,
                          size: 18,
                        ),
                        2.wi,
                        AeonikText(
                          'Back',
                          color: AppColors.grey2,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: GradientText(
                    'Sign in Instead',
                    style: const TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w400,
                      decorationColor: Color.fromARGB(255, 208, 195, 184),
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
            ),
            30.hi,
            AeonikText(
              'Create an account',
              color: AppColors.white,
              weight: FontWeight.w300,
              size: 36,
              height: 44,
            ),
            25.hi,
            Row(
              children: [
                Expanded(
                  child: TextFieldWithHeader(
                    textController: firstNameController,
                    headerText: 'First name',
                    hintText: ' First name',
                  ),
                ),
                10.wi,
                Expanded(
                  child: TextFieldWithHeader(
                    textController: lastNameController,
                    headerText: 'Last name',
                    hintText: ' Last name',
                  ),
                ),
              ],
            ),
            20.hi,
            TextFieldWithHeader(
              textController: phoneNumberController,
              headerText: 'Phone number',
              textInputType: TextInputType.phone,
              hintText: ' Enter phone number',
            ),
            20.hi,
            TextFieldWithHeader(
              textController: emailController,
              headerText: 'Email Address',
              textInputType: TextInputType.emailAddress,
              hintText: ' Enter email address',
            ),
            20.hi,
            TextFieldWithHeader(
              textController: phoneNumberController,
              headerText: 'Create Password',
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
            20.hi,
            TextFieldWithHeader(
              textController: referCodeController,
              headerText: 'Referral Code (Optional)',
              hintText: 'Enter Password',
            ),
            32.hi,
            ActionButton(
              btnText: 'Next',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => OTPScreen(emailAddress: emailController.text,)));
              },
            ),
            32.hi,
            ProgressSteppr(
              firstColor: AppColors.lightWhite,
              secondColor: Color(0xff373737),
            ),
            18.hi,
            Center(
              child: AeonikText(
                'Account information',
                weight: FontWeight.w400,
                size: 16,
                height: 24,
                color: AppColors.grey2,
              ),
            ),
          ],
        ).padHorizontal(23),
      ),
    );
  }
}
