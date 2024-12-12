
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../routes/routes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class HeaderAndForm extends StatelessWidget {
  const HeaderAndForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Header
        IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left)),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelSmall,),
        const SizedBox(height: TSizes.spaceBtwSections * 2,),
        /// Form
        Form(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email,
                prefixIconColor: TColors.darkGrey,
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: TColors.grey,
                        width: 2
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: const Icon(Iconsax.direct_right),

              ),
            )
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        /// Submit Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.toNamed(TRoutes.resetPassword, parameters: {'email':'some@email.com'}),
              style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.primary,
                  foregroundColor: TColors.white,
                  padding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  textStyle: const TextStyle(fontWeight: FontWeight.w100)
              ),
              child: Text(TTexts.submit)),
        ),

      ],
    );
  }
}
