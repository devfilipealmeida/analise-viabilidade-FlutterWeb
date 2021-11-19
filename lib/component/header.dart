import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/style.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const PrimaryText(text: 'Dashboard', size: 30.0, fontWeight: FontWeight.
              w800,),
              const PrimaryText(text: 'Atualizações de Pagamentos', size: 16.0, color: AppColors.
              secondary,),
            ],
          ),
        ),
        const Spacer(flex: 1,),
        Expanded(
          flex: 1,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              contentPadding:
               const EdgeInsets.only(left: 40.0, right: 5.0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: AppColors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: AppColors.white),
              ),
              prefixIcon: const Icon(Icons.search, color: AppColors.black,),
              hintText: 'Pesquisar',
              hintStyle: const TextStyle(color: AppColors.secondary, fontSize: 14.0)
            ),
          ),
          ),
      ],
    );
  }
}