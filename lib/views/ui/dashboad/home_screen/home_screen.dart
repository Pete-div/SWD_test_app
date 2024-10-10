import 'package:aws_test_app/__lib.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> icon = [
      'assets/svgs/dataIcon.svg',
      'assets/svgs/airtimeIcon.svg',
      'assets/svgs/showMaxIcon.svg',
      'assets/svgs/Credit_Card_01.svg',
      'assets/svgs/bettingIcon.svg',
      'assets/svgs/electricityIcon.svg',
      'assets/svgs/tvCableIcon.svg',
      'assets/svgs/EpInIcon.svg'
    ];
    final List<String> topic = [
      'Data',
      'Airtime',
      'Showmax',
      'GitCar',
      'Betting',
      'Electricity',
      'TV/Cable',
      'E-Pin'
    ];

    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(5.0),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          backgroundColor: Colors.transparent,
          elevation: 2,
          child: Container(
              height: 52,
              width: 52,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment(-0.99, 0.08),
                  end: Alignment(0.98, -0.08),
                  colors: [
                    Color(0xFFEF5757),
                    Color(0xFFEFA057),
                  ],
                ),
              ),
              child:
                  SvgPicture.asset('assets/svgs/Chat_Conversation_Circle.svg')),
          onPressed: () {},
        ),
      ),
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerWidget(
                height: height / 2.43,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(children: [
                  51.hi,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContainerWidget(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: AppColors.textGrey),
                            shape: BoxShape.circle),
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset('assets/svgs/User_01.svg'),
                      ),
                      AeonikText('Welcome, Sam 👋🏾',
                          size: 16, height: 24, color: AppColors.textGrey),
                      ContainerWidget(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: AppColors.textGrey),
                            shape: BoxShape.circle),
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset('assets/svgs/bellIcon.svg'),
                      ),
                    ],
                  ).padHorizontal(24),
                  24.hi,
                  AccountDetails(
                    accountBalance: '50,000',
                     cashbackAmount: '345.32', 
                     accountNumber: '843435343', 
                     bankName: 'MoniePoint',
                      depositFee: '23',
                      hidAmount: (){}, 
                      copyFunction: (){}),
                  20.hi,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopItems(
                          icon: 'assets/svgs/topUpIcon.svg',
                          title: 'Top Up',
                          onTap: () {}),
                      Container(
                        height: 17,
                        width: 1,
                        color: AppColors.grey.withOpacity(0.3),
                      ),
                      TopItems(
                          icon: 'assets/svgs/transferIcon.svg',
                          title: 'Transfer',
                          onTap: () {}),
                      Container(
                        height: 17,
                        width: 1,
                        color: AppColors.grey.withOpacity(0.3),
                      ),
                      TopItems(
                          icon: 'assets/svgs/historyIcon.svg',
                          title: 'History',
                          onTap: () {}),
                    ],
                  ).padHorizontal(23),
                  27.hi,
                  Center(
                    child: Container(
                      height: 5,
                      width: 50,
                      color: AppColors.grey.withOpacity(0.1),
                    ),
                  ),
                  14.hi,
                ]).padHorizontal(23),
              ),
              32.hi,
              AeonikText(
                'Quick Actions',
                color: AppColors.white,
                size: 18,
                weight: FontWeight.w500,
                height: 24,
              ).padHorizontal(23),
              18.hi,
              Center(
                child: Wrap(
                  spacing: 6.0,
                  runSpacing: 5.0,
                  alignment: WrapAlignment.center,
                  children: List.generate(
                      icon.length,
                      (index) => QuickAction(
                            icon: icon[index],
                            topic: topic[index],
                          )),
                ).padHorizontal(23),
              ),
              42.hi,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AeonikText(
                    'Quick Actions',
                    color: AppColors.white,
                    size: 18,
                    weight: FontWeight.w500,
                    height: 24,
                  ),
                  AeonikText(
                    'View all',
                    color: AppColors.primaryColor,
                    size: 18,
                    weight: FontWeight.w500,
                    height: 24,
                  )
                ],
              ).padHorizontal(23),
              16.hi,
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: 3,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ContainerWidget(
                      height: 120,
                      width: 285,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/newUpdateImg.png'),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}






