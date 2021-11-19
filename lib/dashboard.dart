// ignore_for_file: prefer_const_constructors

import 'package:dashboard/config/size_config.dart';
import 'package:dashboard/style/colors.dart';
import 'package:dashboard/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/appBarActionItems.dart';
import 'component/header.dart';
import 'component/infoCard.dart';
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
                child: SingleChildScrollView(
                  padding: 
                    EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Header(),

                        SizedBox(height: SizeConfig.blockSizeVertical! * 4,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth,
                          child: Wrap(
                            runSpacing: 20.0,
                            spacing: 20.0,
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              InfoCard(),
                              Container(
                                constraints: BoxConstraints(minWidth: 200.0),
                                padding: EdgeInsets.only(
                                  top: 20.0, 
                                  left: 20.0, 
                                  bottom: 20.0, 
                                  right: 40.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: AppColors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset('assets/images/credit-card.svg', width: 35.0,),
                                    SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
                                    PrimaryText(text: 'Transação via \n Número do Cartão', color: AppColors.
                                    secondary, size: 16.0,),
                                    SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
                                    PrimaryText(text: '1200', fontWeight: FontWeight.w700, size: 18.0,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                constraints: BoxConstraints(minWidth: 200.0),
                                padding: EdgeInsets.only(
                                  top: 20.0, 
                                  left: 20.0, 
                                  bottom: 20.0, 
                                  right: 40.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: AppColors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset('assets/images/credit-card.svg', width: 35.0,),
                                    SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
                                    PrimaryText(text: 'Transação via \n Número do Cartão', color: AppColors.
                                    secondary, size: 16.0,),
                                    SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
                                    PrimaryText(text: '1200', fontWeight: FontWeight.w700, size: 18.0,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                constraints: BoxConstraints(minWidth: 200.0),
                                padding: EdgeInsets.only(
                                  top: 20.0, 
                                  left: 20.0, 
                                  bottom: 20.0, 
                                  right: 40.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: AppColors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset('assets/images/credit-card.svg', width: 35.0,),
                                    SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
                                    PrimaryText(text: 'Transação via \n Número do Cartão', color: AppColors.
                                    secondary, size: 16.0,),
                                    SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
                                    PrimaryText(text: '1200', fontWeight: FontWeight.w700, size: 18.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                ),              
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                color: AppColors.secondaryBg,
                child: SingleChildScrollView(
                padding: 
                    EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const AppBarActionItems(),
                      PaymentDetailList(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}