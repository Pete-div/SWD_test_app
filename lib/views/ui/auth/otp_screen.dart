import 'package:aws_test_app/__lib.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key, required this.emailAddress});

  final String? emailAddress;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  // Focus nodes to control field focus transitions
  FocusNode _firstFieldFocus = FocusNode();

  TextEditingController _firstPinController = TextEditingController();
  String _fullPin = "";
  FocusNode _secondFieldFocus = FocusNode();
  TextEditingController _secondPinController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Listening to the first field for auto-transition to the second
    _firstPinController.addListener(() {
      if (_firstPinController.text.length == 2) {
        _secondFieldFocus.requestFocus();
      }
      _updateFullPin();
    });

    // Listening to the second field
    _secondPinController.addListener(() {
      if (_secondPinController.text.isEmpty) {
        _firstFieldFocus.requestFocus();
      }
      _updateFullPin();
    });
  }

  // Function to update the full pin
  void _updateFullPin() {
    setState(() {
      _fullPin = _firstPinController.text + _secondPinController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AuthContainer(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: AbsorbPointer(
              child: Row(
                children: [
                  60.hi,
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
          30.hi,
          AeonikText(
            'Verify your email',
            color: AppColors.white,
            weight: FontWeight.w300,
            size: 29,
            height: 32,
          ).padHorizontal(10),
          16.hi,
          AeonikText(
            'Please enter the OTP sent to ',
            color: AppColors.grey2,
            weight: FontWeight.w300,
            size: 16,
            height: 24,
          ).padHorizontal(10),
          AeonikText(
            widget.emailAddress ?? 'olagoke@gmail.com',
            color: AppColors.white,
            weight: FontWeight.w500,
            size: 16,
            height: 24,
          ).padHorizontal(10),
          32.hi,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PinCodeTextField(
                maxLength: 3,
                controller: _firstPinController,
                pinBoxColor: AppColors.grey2.withOpacity(0.1),
                defaultBorderColor: AppColors.white.withOpacity(0.1),
                pinBoxBorderWidth: 2,
                pinBoxHeight: 52,
                pinBoxWidth: 46,
                pinBoxRadius: 8.0,
                hasTextBorderColor: AppColors.lightWhite,
                pinTextStyle: TextStyle(color: AppColors.white, fontSize: 24),
                focusNode: _firstFieldFocus,
                onDone:(val){
                  
            
                  _secondFieldFocus.requestFocus();
                  },
              ),
              ContainerWidget(
                height: 2,
                width: 10,
                backgroundColor: AppColors.white,
                margin: const EdgeInsets.symmetric(horizontal: 12),
              ),
              PinCodeTextField(
                hasTextBorderColor: AppColors.lightWhite,
                maxLength: 3,
                pinTextStyle: TextStyle(color: AppColors.white, fontSize: 24),
                controller: _secondPinController,
                pinBoxColor: AppColors.grey2.withOpacity(0.1),
                defaultBorderColor: AppColors.white.withOpacity(0.1),
                pinBoxBorderWidth: 2,
                pinBoxHeight: 52,
                pinBoxWidth: 46,
                pinBoxRadius: 8.0,
                focusNode: _secondFieldFocus,
              ),
            ],
          ),
          300.hi,
          ActionButton(
            btnText: 'Verify email',
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context)=>LoginPage(),),);
            },
          ).padHorizontal(10),
          32.hi,
          ProgressSteppr(
            firstColor: AppColors.lightWhite,
            secondColor: AppColors.white,
          ).padHorizontal(10),
          18.hi,
          Center(
            child: AeonikText(
              'Email verification',
              weight: FontWeight.w400,
              size: 16,
              height: 24,
              color: AppColors.grey2,
            ),
          ).padHorizontal(10),
        ],
      ).padHorizontal(10),
    ));
  }
}
