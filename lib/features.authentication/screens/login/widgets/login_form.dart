
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:poultry_admin_panel/routes/routes.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Form(
      child: Padding(padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                prefixIconColor: TColors.darkGrey,
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: TColors.grey,
                        width: 2
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                  labelText: TTexts.password,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: TColors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(Iconsax.password_check),
                  prefixIconColor: TColors.darkGrey,
                  suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Iconsax.eye_slash))
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}, activeColor: TColors.primary,checkColor: Colors.white,),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                /// Forget Password
                TextButton(onPressed: () => Get.toNamed(TRoutes.forgetPassword), child: const Text(TTexts.forgetPassword),)
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),

            /// Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: TColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    textStyle: const TextStyle(fontWeight: FontWeight.w900)
                ),
                child: const Text(TTexts.signIn, style: TextStyle(fontWeight: FontWeight.w100),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// return Form(
//     child: Padding(
//     padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
// child: Column(
// children: [
// ///Email
// TextFormField(
// decoration: InputDecoration(
// prefixIcon: const Icon(Iconsax.direct_right),
// labelText: TTexts.email,
// ),
// ),
// const SizedBox(height: TSizes.spaceBtwInputFields,),
//
// ///Password
// TextFormField(
// decoration: InputDecoration(
// prefixIcon: const Icon(Iconsax.password_check),
// labelText: TTexts.password,
// suffixIcon: const Icon(Iconsax.eye_slash),
// ),
//
// ),
// const SizedBox(height: TSizes.spaceBtwInputFields/ 2),
//
// ///Remember Me and Forget Password
// Row(
// children: [
// ///Remember Me
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Checkbox(value: true, onChanged: (value) {}),
// Text(TTexts.rememberMe),
// ],
// ),
// const SizedBox(width: 75),
// /// Forget Password
// TextButton(
// onPressed: () {},
// child: Text(TTexts.forgetPassword))
// ],
// ),
// const SizedBox(height: TSizes.spaceBtwSections,),
//
// ///Sign in Button
// SizedBox(width: double.infinity ,child: ElevatedButton(onPressed: () {}, child: Text(TTexts.signIn))),
// const SizedBox(height: TSizes.spaceBtwItems,),
//
// /// Create Account Button
// SizedBox(width: double.infinity ,child: OutlinedButton(
// onPressed: () {},
// style: OutlinedButton.styleFrom(
// side: BorderSide(color: Colors.grey.shade300),
// ),
// child: Text(TTexts.createAccount,),
// )),
// ],
// ),
// ));