
import '../../../__lib.dart';

class TextFieldWithHeader extends StatelessWidget {
  const TextFieldWithHeader({
    super.key,
    required this.textController,
    required this.headerText,
    required this.hintText,
    this.textInputType,
    this.validator,
    this.readOnly=false,
    this.maxLines,
    this.suffixIcon,
    this.errorBoarder,
    this.enableBoarder,
    this.hintTexColor,
    this.obscurePassword=false,
  });

final String hintText;
final String headerText;
  final TextEditingController textController;
  final TextInputType? textInputType;
   final String? Function(String?)? validator;
  final Widget? suffixIcon;
    final int? maxLines;
    final bool obscurePassword;
   final InputBorder? errorBoarder;
    final InputBorder? enableBoarder;
     final bool readOnly;
     final Color? hintTexColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AeonikText(headerText,weight: FontWeight.w400,size: 16,height: 20.3,color: AppColors.white,),
        8.hi,
        SizedBox(
          child: CustomTextFieldWidget(
  keyboardType:textInputType ?? TextInputType.text ,
            controller:textController,
            validator: validator,
                       borderRadius: BorderRadius.circular(8),
obscureText:obscurePassword ,
            enableBoarder: enableBoarder,
          backgroundColor: Colors.grey.withOpacity(0.1),
          hintText: hintText,
          maxLines: maxLines ?? 1,
               suffixIcon: suffixIcon,
               errorBoarder: errorBoarder,
          hintTextStyle:  TextStyle(
                color: AppColors.grey2,
                fontWeight: FontWeight.w400,
                fontSize: 16,
               
          ),),
        )
    
      ],);
  }
}