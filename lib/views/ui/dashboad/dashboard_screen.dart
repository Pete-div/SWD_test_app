


import 'package:flutter_svg/flutter_svg.dart';

import '../../../__lib.dart';

class DashBoardScreen extends StatefulWidget {
   const DashBoardScreen({super.key ,this.selectedIndex});
  final int? selectedIndex;


  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
  
}

class _DashBoardScreenState extends State<DashBoardScreen> {
    int _selectedIndex = 0;

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex = widget.selectedIndex ?? 0;

  }


  @override
  Widget build(BuildContext context) {

    return 
         PopScope(
      canPop: false,

      
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: pages.elementAt(_selectedIndex),
        bottomNavigationBar:   BottomNavigationBar(
          
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: "Home",
          icon:  SvgPicture.asset('assets/svgs/House_01.svg',height: 25,color: AppColors.grey2.withOpacity(0.3),),
               activeIcon: SvgPicture.asset('assets/svgs/House_01.svg',height: 25,) ,

          backgroundColor: AppColors.black,
        ),
        BottomNavigationBarItem(
          label: "Services",
           activeIcon:  SvgPicture.asset('assets/svgs/More_Grid_Big.svg',height: 28,color: AppColors.white,) ,
          icon:  SvgPicture.asset('assets/svgs/More_Grid_Big.svg',height: 28,),
          backgroundColor: AppColors.blue,
        ),
        BottomNavigationBarItem(
          label: "Statistics",
          activeIcon: SvgPicture.asset('assets/svgs/Arrow_Down_Up.svg',height: 25,color: AppColors.white) ,
          icon:  SvgPicture.asset('assets/svgs/Arrow_Down_Up.svg',height: 26,width:30,),
          backgroundColor: AppColors.blue,
        ),
        BottomNavigationBarItem(
          label: "Referrals",
          activeIcon:  SvgPicture.asset('assets/svgs/Settings.svg',height: 25,color: AppColors.white) ,
       icon:  SvgPicture.asset('assets/svgs/Settings.svg',height: 25),
          backgroundColor: Colors.white,
        ),
                BottomNavigationBarItem(
          label: "Settings",
          activeIcon:  SvgPicture.asset('assets/svgs/main_Settings.svg',height: 25,color: AppColors.white) ,
       icon:  SvgPicture.asset('assets/svgs/main_Settings.svg',height: 25),
          backgroundColor: Colors.white,
        ),
     
      ],
      currentIndex:_selectedIndex ,
      selectedItemColor: AppColors.white,
      selectedFontSize: 12.0,
      backgroundColor: AppColors.black,
      unselectedItemColor: const Color(0xff818181),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap:  (index){
                setState(() {
                 _selectedIndex = index;
                });}
      ),
    ));
  }
}
 List<Widget> pages = const [
      HomeScreen(),
      ServiceScreen(),
      StatisticsScreen(),
      ReferralScreen(),
      SettingsScreen(),
    ];

