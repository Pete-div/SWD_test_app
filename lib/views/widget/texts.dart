
import 'package:aws_test_app/__lib.dart';


class AeonikText extends StatelessWidget {
  final String? text;
  final FontWeight? weight;
  final double size;
  final double? height;
  final Color? color;
  final TextAlign? textAlign;
  final String? fontFamily;
  final int? maxLines;
  final bool? softWrap;
  final TextDecoration? decoration;

  const AeonikText(this.text,
      {Key? key,
      this.weight,
      this.size = 13,
      this.color,
      this.textAlign,
      this.maxLines,
      this.decoration,
      this.height = 16,
      this.fontFamily,
      this.softWrap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '-',
      softWrap: softWrap,
      maxLines: maxLines,
      textAlign: textAlign,     
      overflow: TextOverflow.visible,
      style: TextStyle(
        fontWeight: weight ?? FontWeight.w400,
        fontSize: size,
        color: color ?? AppColors.black,
        height: height?.toFigmaHeight(size),
        fontFamily: fontFamily ?? "AeonikReguler",
        decoration: decoration,
        decorationColor: color?? AppColors.black
      ),
    );
  }

}




extension FigmaDimention on double {
  double toFigmaHeight(double fontSize) {
    return this / fontSize;
  }
}
