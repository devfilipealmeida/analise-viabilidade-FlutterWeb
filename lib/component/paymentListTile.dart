import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/colors.dart';
import '../style/style.dart';

class PaymentListTile extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? amount;

  const PaymentListTile({
    required this.icon, this.label, this.amount
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0, right: 20.0),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50.0,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          ),
        child: SvgPicture.asset(icon!, width: 20.0,),
      ),
      title: PrimaryText(text: label!, size: 14.0, fontWeight: FontWeight.w500,),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const PrimaryText(text: 'Realizado com Sucesso', size: 12.0, color: AppColors.secondary,),
          PrimaryText(
            text: amount!, 
            size: 16.0, 
            color: AppColors.black, 
            fontWeight: FontWeight.w600,),
        ],
      ),
    );
  }
}

