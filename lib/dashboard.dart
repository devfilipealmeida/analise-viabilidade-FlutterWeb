// ignore_for_file: prefer_const_constructors

import 'package:dashboard/config/size_config.dart';
import 'package:dashboard/style/colors.dart';
import 'package:flutter/material.dart';

import 'component/appBarActionItems.dart';
import 'component/paymentdetailList.dart';
import 'component/sidemenu.dart';


class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: const SideMenu(),
            ),
            Expanded(
              flex: 10,
              child: SizedBox(
                width: double.infinity,
                height: SizeConfig.screenHeight,                
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                color: AppColors.secondaryBg,
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const AppBarActionItems(),
                    PaymentDetailList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}