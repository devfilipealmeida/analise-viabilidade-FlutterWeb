import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/size_config.dart';
import '../style/colors.dart';
import '../style/style.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

