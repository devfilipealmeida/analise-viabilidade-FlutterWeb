// ignore_for_file: prefer_const_constructors

import 'package:dashboard/component/paymentListTile.dart';
import 'package:dashboard/style/style.dart';
import 'package:flutter/material.dart';

import '../config/size_config.dart';
import '../data.dart';
import '../style/colors.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
          ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [BoxShadow(
              color: AppColors.iconGray,
              blurRadius: 15.0,
              offset: const Offset(10.0, 15.0)
            )]
          ),
          child: Image.asset('assets/images/card.png'),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            PrimaryText(text: 'Atividades Recentes', size: 18, fontWeight: FontWeight.w800,),
            PrimaryText(text: '17 Mar 2021', size: 14, fontWeight: FontWeight.w400, color: AppColors.
            secondary,)
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(recentActivities.length, (index) => PaymentListTile(
            icon: recentActivities[index]["icon"],
            label: recentActivities[index]["label"],
            amount: recentActivities[index]["amount"],
          ) ),
        ),       
      ],
    );
  }
}

