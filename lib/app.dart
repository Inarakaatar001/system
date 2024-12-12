import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poultry_admin_panel/common/widgets/custom_shapes/rounded_containers.dart';
import 'package:poultry_admin_panel/common/widgets/layouts/templates/site_layout.dart';
import 'package:poultry_admin_panel/routes/app_routes.dart';
import 'package:poultry_admin_panel/routes/routes.dart';
import 'package:poultry_admin_panel/utils/constants/text_strings.dart';
import 'package:poultry_admin_panel/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialRoute: TRoutes.dashboard,
      getPages: TAppRoute.pages,
      home: const ResponsiveDesignScreen(),
      unknownRoute: GetPage(name: '/page-not-found', page: () => const Scaffold(body: Center(child: Text('Page Not Found'),),)),
    );

  }
}
class ResponsiveDesignScreen extends StatelessWidget {
  const ResponsiveDesignScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const TSiteTemplate(
      desktop: Desktop(),
      tablet: Tablet(),
      mobile: Mobile(),
    );
  }
}


class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
              /// FIRST ROW
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: TRoundedContainer(
                        height: 420,
                        backgroundColor: Colors.blue.withOpacity(0.2),
                        child: const Center(child: Text('box 1'),),
                      )
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        TRoundedContainer(
                          height: 200,
                          backgroundColor: Colors.orange.withOpacity(0.2),
                          child: const Center(child: Text('box 2'),),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(
                              child: TRoundedContainer(
                                height: 200,
                                backgroundColor: Colors.red.withOpacity(0.2),
                                child: const Center(child: Text('box 3'),),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Expanded(
                              child: TRoundedContainer(
                                height: 200,
                                backgroundColor: Colors.green.withOpacity(0.2),
                                child: const Center(child: Text('box 4'),),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              /// 2nd Row
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: TRoundedContainer(
                      height: 150,
                      width: double.infinity,
                      backgroundColor: Colors.red.withOpacity(0.2),
                      child: const Center(child: Text('box 5'),),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: TRoundedContainer(
                      height: 150,
                      width: double.infinity,
                      backgroundColor: Colors.red.withOpacity(0.2),
                      child: const Center(child: Text('Box 6'),),
                    ),
                  )
                ],
              ),
            ],
    );
  }
}
class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    children: [
                      TRoundedContainer(
                          height: 420,
                          backgroundColor: Colors.blue.withOpacity(0.2),
                          child: const Center(child: Text("box 1"),)
                      )
                    ],
                  )
              ),
              const SizedBox(width: 20,),
              Expanded(
                flex: 2,
                  child: Column(
                    children: [
                      TRoundedContainer(
                        height: 200,
                        backgroundColor: Colors.orange.withOpacity(0.2),
                        child: const Center(child: Text('Box 2'),),
                      ),
                      const SizedBox(height: 20,),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                    children: [
                                      Expanded(
                                        child: TRoundedContainer(
                                          height: 200,
                                          width: double.infinity,
                                          backgroundColor: Colors.red.withOpacity(0.2),
                                          child: const Center(child: Text('Box 3')),
                                        ),
                                      ),
                                      const SizedBox(width: 20,),
                                      Expanded(
                                        child: TRoundedContainer(
                                          height: 200,
                                          width: double.infinity,
                                          backgroundColor: Colors.green.withOpacity(0.2),
                                          child: const Center(child: Text('Box 4'),),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
              )
            ],
          ),
          const SizedBox(height: 20),
          /// 2nd Row
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TRoundedContainer(
                height: 190,
                width: double.infinity,
                backgroundColor: Colors.red.withOpacity(0.2),
                child: const Center(child: Text('box 5'),),
              ),
              const SizedBox(height: 20,),
              TRoundedContainer(
                height: 190,
                width: double.infinity,
                backgroundColor: Colors.red.withOpacity(0.2),
                child: const Center(child: Text('Box 6'),),
              )
            ],
          ),
        ],
      ),
    );
  }
}


class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          /// 1st Row
          TRoundedContainer(
            height: 450,
            width: double.infinity,
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: const Center(child: Text('Box 1'),),
          ),
          const SizedBox(height: 20,),
          TRoundedContainer(
            height: 215,
            width: double.infinity,
            backgroundColor: Colors.orange.withOpacity(0.2),
            child: const Center(child: Text('Box 2'),),
          ),
          const SizedBox(height: 20,),
          TRoundedContainer(
            height: 215,
            width: double.infinity,
            backgroundColor: Colors.red.withOpacity(0.2),
            child: const Center(child: Text('Box 3')),
          ),
          const SizedBox(height: 20,),
          TRoundedContainer(
            height: 215,
            width: double.infinity,
            backgroundColor: Colors.green.withOpacity(0.2),
            child: const Center(child: Text('Box 4'),),
          ),
          const SizedBox(height: 20,),
          TRoundedContainer(
            height: 190,
            width: double.infinity,
            backgroundColor: Colors.red.withOpacity(0.2),
            child: const Center(child: Text('box 5'),),
          ),
          const SizedBox(height: 20,),
          TRoundedContainer(
            height: 190,
            width: double.infinity,
            backgroundColor: Colors.red.withOpacity(0.2),
            child: const Center(child: Text('Box 6'),),
          )
        ],
      ),
    );
  }
}




