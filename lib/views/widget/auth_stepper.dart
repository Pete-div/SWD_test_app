import '../../__lib.dart';

class ProgressSteppr extends StatelessWidget {
  const ProgressSteppr({
    super.key,
    required this.firstColor,
    required this.secondColor,
  });
  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ContainerWidget(
            height: 3,
            backgroundColor: firstColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        3.wi,
        Expanded(child: ContainerWidget(
             height: 3,
            backgroundColor:secondColor,
              borderRadius: BorderRadius.circular(8),
        ),),
      ],
    );
  }
}