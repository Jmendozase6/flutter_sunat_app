import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sunat_app/core/constants/colors.dart';
import 'package:sunat_app/core/constants/strings.dart';
import 'package:sunat_app/view/styles/styles.dart';
import 'package:sunat_app/view_model/onboard_view_model.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onboardController = Provider.of<OnBoardController>(context);

    return Column(
      children: [
        SizedBox(
          height: 0.5.sh,
          child: PageView(
            onPageChanged: (index) {
              onboardController.currentIndex = index;
            },
            physics: const BouncingScrollPhysics(),
            controller: PageController(
              initialPage: onboardController.currentIndex,
              keepPage: true,
            ),
            children: const [
              _PageViewItem(
                image: Strings.onboardImage1,
                title: Strings.onBoardTitle1,
                subtitle: Strings.onBoardSubtitle1,
              ),
              _PageViewItem(
                image: Strings.onboardImage2,
                title: Strings.onBoardTitle2,
                subtitle: Strings.onBoardSubtitle2,
              ),
              _PageViewItem(
                image: Strings.onboardImage3,
                title: Strings.onBoardTitle3,
                subtitle: Strings.onBoardSubtitle3,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _DotIndex(isSelected: onboardController.currentIndex == 0),
            SizedBox(width: 5.w),
            _DotIndex(isSelected: onboardController.currentIndex == 1),
            SizedBox(width: 5.w),
            _DotIndex(isSelected: onboardController.currentIndex == 2),
          ],
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}

class _DotIndex extends StatelessWidget {
  const _DotIndex({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isSelected ? 10.h : 5.h,
      width: isSelected ? 10.w : 5.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? primaryColor : Colors.grey,
      ),
      duration: const Duration(milliseconds: 200),
    );
  }
}

class _PageViewItem extends StatelessWidget {
  const _PageViewItem({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Container(
            height: 160.h,
            width: 160.w,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: SvgPicture.asset(image),
          ),
          SizedBox(height: 15.h),
          Text(
            title,
            style: TextStyles.headline6Bold(color: Colors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.h),
          Text(
            subtitle,
            style: TextStyles.headline7(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
