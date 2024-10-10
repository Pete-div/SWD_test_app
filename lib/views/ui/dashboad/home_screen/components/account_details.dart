import 'package:flutter_svg/svg.dart';

import '../../../../../__lib.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({
    super.key, required this.accountBalance,required this.hidAmount, required this.cashbackAmount, required this.accountNumber, required this.bankName, required this.depositFee, required this.copyFunction,
  });
  final String accountBalance;
  final String cashbackAmount;
  final String accountNumber;
  final String bankName;
final String depositFee;
final Function() copyFunction;
final Function() hidAmount;

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      height: 99.h,
      width: 340,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomRight: Radius.circular(16)),
        gradient: LinearGradient(
          begin: Alignment(-0.99, 0.08),
          end: Alignment(0.98, -0.08),
          colors: [
            Color(0xFFEF5757),
            Color(0xFFEFA057),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AeonikText(
                'WALLET BALANCE',
                color: AppColors.white,
                size: 10,
              ),
              3.hi,
              Row(
                children: [
                  AeonikText(
                    'NGN $accountBalance',
                    size: 16,
                    weight: FontWeight.w900,
                    color: AppColors.white,
                  ),
                  10.wi,
                  GestureDetector(
                    onTap: hidAmount,
                    child: SvgPicture.asset(
                      'assets/svgs/crossEyIcon.svg',
                      height: 15,
                    ),
                  )
                ],
              ),
              12.hi,
              ContainerWidget(
                backgroundColor: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(40),
                padding: const EdgeInsets.symmetric(
                    vertical: 5, horizontal: 8),
                child: Row(
                  children: [
                    AeonikText('Cashback'),
                    5.wi,
                    GradientText(
                      'N$cashbackAmount',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                      gradient: const LinearGradient(
                        colors: <Color>[
                          Color(0xFFF76B1C), // Orange
                          Color(0xffEF5858), // Pinkish-red
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 70,
            color: AppColors.black.withOpacity(0.3),
            width: 1,
          ),
          ContainerWidget(
            elevation: 0,
            decoration: const BoxDecoration(
              color: Color(0xFFEFA057),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              gradient: LinearGradient(
                begin: Alignment(-0.1, 0.0),
                end: Alignment(0.01, -0.0),
                colors: [
                  Color(0xFFEFA057),
                  Color.fromARGB(255, 230, 168, 109),
                ],
              ),
            ),
            margin: const EdgeInsets.only(right: 4),
            padding: const EdgeInsets.symmetric(
                vertical: 8, horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AeonikText(
                    bankName,
                    color: AppColors.white,
                  ),
                  3.hi,
                  Row(
                    children: [
                      AeonikText(
                       accountNumber,
                        size: 16,
                        weight: FontWeight.w900,
                        color: AppColors.white,
                      ),
                      10.wi,
                      GestureDetector(
                        onTap: copyFunction,
                        child: SvgPicture.asset(
                          'assets/svgs/copyIcon.svg',
                          height: 15,
                        ),
                      )
                    ],
                  ),
                  AeonikText(
                    'Deposit Fee: N$depositFee',
                    decoration: TextDecoration.underline,
                    size: 12,
                    color: AppColors.white,
                  )
                ]),
          )
        ],
      ).padSymmetric(vertical: 10, horizontal: 10),
    );
  }
}