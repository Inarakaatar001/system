import 'package:flutter/material.dart';
import 'package:poultry_admin_panel/common/widgets/images/%20t_circular_image.dart';
import 'package:poultry_admin_panel/utils/constants/colors.dart';
import 'package:poultry_admin_panel/utils/constants/image_string.dart';

import '../../../../utils/constants/sizes.dart';

class TSidebar extends StatelessWidget {
  const TSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const BeveledRectangleBorder(),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(right: BorderSide(color: TColors.grey,width: 1))
        ),
        child:  SingleChildScrollView(
          child: Column(
            children: [
              // Image
              const TCircularImage(width: 100,image: TImages.darkAppLogo,backgroundColor: Colors.transparent,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              Padding(
                padding: const EdgeInsets.all(TSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('MENU', style: Theme.of(context).textTheme.bodySmall!.apply(letterSpacingDelta: 1.2)),
                    
                    // Menu Items
                    // const TMenuItem(route: TRoutes.firstScreen, icon: Iconsax.status, itemName: 'Dashboard',),
                    // const TMenuItem(route: TRoutes.secondScreen, icon: Iconsax.image, itemName: 'Media',),
                    // const TMenuItem(route: TRoutes.responsiveDesignTutorialScreen, icon: Iconsax.picture_frame, itemName: 'Banners',),

                  ],),
              )
          ],
        ),),
      ),
    );
  }
}
