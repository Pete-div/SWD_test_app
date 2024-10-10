import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../__lib.dart';

class QuickAction extends StatelessWidget {
  const QuickAction({
    super.key,
    required this.icon,
    required this.topic,
    // required this.iconTap,
  });
  final String topic;
  final String icon;
//final Function() iconTap;
  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      elevation: 1,
      height: 75,
      width: 78,
      margin: EdgeInsets.zero,
      borderRadius: BorderRadius.circular(5),
      // padding: EdgeInsets.symmetric(vertical: 14,horizontal: 27),
      backgroundColor: AppColors.grey3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          5.hi,
          AeonikText(
            topic,
            size: 14,
            color: AppColors.white,
          )
        ],
      ),
    );
  }
}