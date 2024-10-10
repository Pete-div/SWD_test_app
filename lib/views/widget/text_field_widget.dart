import 'package:flutter/services.dart';
import '../../__lib.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final TextEditingController controller;
  final Function(String)? onSubmitted;
  final Function(String)? onchange;
  final Function(String)? onFieldSubmitted;
  final String? hintText;
  final Color? backgroundColor;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool hasBorder;
  final TextStyle? labelStyle;
  final String? labelText;
  final TextInputType? keyboardType;
  final TextStyle? hintTextStyle;
  final BorderRadius? borderRadius;
  final Color? tappedColor;
  final int? minLines;
  final TextInputType? textInputType;
  final int? maxLines;
  final int? maxLength;
  final bool autofocus;
  final EdgeInsetsGeometry? contentPadding;
  final bool? enabled;
  final bool readOnly;
  final List<TextInputFormatter>? textInputFormatters;
  final InputBorder? enableBoarder;
  final InputBorder? errorBoarder;
  final TextStyle? style;
  final InputBorder? focusBorder;
  final VoidCallback? onTap;

  const CustomTextFieldWidget({
    Key? key,
    this.textInputAction,
    this.focusNode,
    required this.controller,
    this.textInputType,
    this.onSubmitted,
    this.hintText,
    this.backgroundColor,
    this.contentPadding,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.hasBorder = false,
    this.keyboardType,
    this.hintTextStyle,
    this.enableBoarder,
    this.focusBorder,
    this.labelStyle,
    this.labelText,
    this.borderRadius,
    this.tappedColor,
    this.minLines,
    this.onTap,
    this.errorBoarder,
    this.maxLines,
    this.onchange,
    this.onFieldSubmitted,
    this.maxLength,
    this.autofocus = false,
    this.readOnly = false,
    this.enabled,
    this.style,
    this.textInputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final appTheme = ref.watch(appThemeProvider);
    return GestureDetector(
      onTap:onTap ,
      child: TextFormField(
        onChanged: onchange,
        enabled: enabled,
        autovalidateMode: AutovalidateMode.disabled,
        autofocus: autofocus,
        controller: controller,
        inputFormatters: textInputFormatters,
        validator: validator,
        focusNode: focusNode,
        minLines: minLines,
        maxLines: maxLines,
        maxLength: maxLength,
        obscureText: obscureText,
        keyboardType: keyboardType,
        onFieldSubmitted: onFieldSubmitted,
        textInputAction: textInputAction,
        readOnly: readOnly,
        style: style ??
           TextStyle(
        //color: appTheme.textColors.c700,
        color: AppColors.white,
        fontWeight: FontWeight.w500,
        fontSize: 13,
      ),
        decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor ?? Colors.transparent,
          suffixIcon: suffixIcon,
          suffixIconColor:
              suffixIconColor ?? Theme.of(context).colorScheme.primary,
          prefixIcon: prefixIcon,
          labelText: labelText,
          labelStyle: labelStyle ?? Theme.of(context).textTheme.bodyMedium,
          prefixIconColor:
              prefixIconColor ?? Theme.of(context).colorScheme.primary,
          hintText: hintText,
          hintStyle: hintTextStyle ??
              TextStyle(
                //  color: appTheme.textColors.c200,
                color: AppColors.grey2,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
          border: OutlineInputBorder(
            borderSide:  BorderSide(
              color:AppColors.lightGrey.withOpacity(0.2),
            ),
            borderRadius: borderRadius ?? BorderRadius.zero,
          ),
          errorBorder:errorBoarder ??
              OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.red,
                    width: controller.text.isNotEmpty ? 0.5 : 0.5),
                borderRadius: borderRadius ?? BorderRadius.zero,
              ), 
          enabledBorder: enableBoarder ??
              OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColors.lightGrey.withOpacity(0.2),
                    width: controller.text.isNotEmpty ? 1.5 : 1),
                borderRadius: borderRadius ?? BorderRadius.zero,
              ),
          focusedBorder: focusBorder ??
              OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightGrey.withOpacity(0.2), width: 1.5),
                borderRadius: borderRadius ?? BorderRadius.zero,
              ),
        ),
      ),
    );
  }
}
