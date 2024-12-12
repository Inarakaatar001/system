import 'package:flutter/material.dart';
import 'package:poultry_admin_panel/utils/constants/colors.dart';
import 'package:poultry_admin_panel/utils/helpers/helper_function.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../styles/spacing_style.dart';


class TLoginTemplate extends StatelessWidget {
  const TLoginTemplate({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Center(
        child: SizedBox(
          width: 550,
          child: SingleChildScrollView(
            child: Container(
              padding: TSpacingStyle.paddingWithAppBarHeight,
              decoration: BoxDecoration(
                  color: THelperFunctions.isDarkMode(context) ? TColors.black :Colors.white,
                  borderRadius: BorderRadius.circular(TSizes.cardRadiusLg)
              ),
              child: child
            ),
          ),
        ),
      ),
    );
  }
}

