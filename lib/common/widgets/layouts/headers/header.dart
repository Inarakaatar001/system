import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:poultry_admin_panel/common/widgets/images/t_rounded_image.dart';
import 'package:poultry_admin_panel/utils/constants/colors.dart';
import 'package:poultry_admin_panel/utils/constants/enums.dart';
import 'package:poultry_admin_panel/utils/constants/sizes.dart';
import 'package:poultry_admin_panel/utils/device/device_utility.dart';

import '../../../../utils/constants/image_string.dart';

class THeader extends StatelessWidget implements PreferredSizeWidget {
  const THeader({super.key, this.scaffoldKey});

  final GlobalKey<ScaffoldState>? scaffoldKey ;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey.shade300, width: 1))
      ),
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md,vertical: TSizes.sm),
      child: AppBar(
        /// Mobile Menu
        elevation: 0,
        backgroundColor: Colors.transparent,

        /// Remove Back Arrow
        automaticallyImplyLeading: false, // Disable default back button

        leading: !TDeviceUtils.isDesktopScreen(context)
            ? IconButton(onPressed: () => scaffoldKey?.currentState?.openDrawer(),  icon: const Icon(Iconsax.menu_1))
            : null,

        /// Search Field
        // title: TDeviceUtils.isDesktopScreen(context) ? SizedBox(
        //   width: 400,
        //   child: Container(
        //     decoration: const InputDecoration(prefixIcon: Icon(Iconsax.search_normal), hintText: 'search anything'),
        //   ),
        // ) : null
        title: TDeviceUtils.isDesktopScreen(context)
            ? SizedBox(
          width: 400,
          child: Container(
            height: 50, // Set height of the search container
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10), // Rounded corners
              border: Border.all(color: TColors.black.withOpacity(0.5), width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child:  Row(
              children: [
                const Icon(Iconsax.search_normal, color: Colors.grey),
                const SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search anything...',
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
            : null,

        /// Actions
    actions: [
      // -- Search Icon
      if(!TDeviceUtils.isDesktopScreen(context))
        IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.search_normal_1)),

      // -- Notification icon
      IconButton(icon: const Icon(Iconsax.notification), onPressed: () {}),
      const SizedBox(width: TSizes.spaceBtwItems / 2,),

      // User data
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image
          const TRoundedImage(
            imageType: ImageType.asset,
            image: TImages.user,
            width: 40,
            padding: 2,
            height: 40,
          ),
          const SizedBox(width: TSizes.sm,),

          // Name and Email
          if (TDeviceUtils.isDesktopScreen(context))
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('CEO', style: Theme.of(context).textTheme.titleLarge,),
              Text('support@gmail.com', style: Theme.of(context).textTheme.labelMedium,),
            ],
          )
        ],)
    ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight() + 15) ;
}
