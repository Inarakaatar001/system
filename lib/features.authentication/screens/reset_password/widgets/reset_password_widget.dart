
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/routes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ResetPasswordWidget extends StatelessWidget {
  const ResetPasswordWidget({
    super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColors.white,
      child: Column(
        children: [
          /// Header
          Row(
            children: [
              IconButton(onPressed: () => Get.toNamed(TRoutes.login), icon: const Icon(CupertinoIcons.clear)),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems),

          /// Image
          const Image(image: AssetImage(TImages.deliveredEmailIllustration), width: 300,height: 300,),
          const SizedBox(height: TSizes.spaceBtwItems,),

          /// Title & Subtitle
          Text(TTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center,),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Text(TTexts.tContinue ?? '', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Text(TTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center,),
          const SizedBox(height: TSizes.spaceBtwSections,),

          /// Buttons
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.offAllNamed(TRoutes.login),
                style: ElevatedButton.styleFrom(
                    backgroundColor: TColors.primary,
                    foregroundColor: TColors.white,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    textStyle: const TextStyle(fontWeight: FontWeight.w100)
                ),
                child: const Text(TTexts.done)),
          ),

          const SizedBox(height: TSizes.spaceBtwItems,),
          SizedBox(width: double.infinity,child: TextButton(onPressed: () {}, child: const Text(TTexts.resendEmail)),),


        ],
      ),
    );
  }
}
