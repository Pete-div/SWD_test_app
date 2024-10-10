 import '../../__lib.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    required this.btnText,
    required this.onTap,
    super.key,
  });
  final String btnText;
  final Function()onTap;

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      onTap: onTap,
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          begin: Alignment(-0.99, 0.08),
          end: Alignment(0.98, -0.08),
          colors: [
            Color(0xFFEF5757),
            Color(0xFFEFA057),
          ],
        ),
      ),
      child: Center(
          child: AeonikText(
        btnText,
        color: AppColors.white,
        size: 16,
        weight: FontWeight.w400,
      )),
    );
  }
}
