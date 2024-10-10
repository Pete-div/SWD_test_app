import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../__lib.dart';

class TopItems extends StatelessWidget {
  const TopItems({
    super.key,
    required this.icon,
    required this.onTap,
    required this.title,
  });
  final Function() onTap;
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AbsorbPointer(
        child: Column(
          children: [
            SvgPicture.asset(icon),
            8.hi,
            AeonikText(
              title,
              color: AppColors.grey3,
              size: 14,
              weight: FontWeight.w600,
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}