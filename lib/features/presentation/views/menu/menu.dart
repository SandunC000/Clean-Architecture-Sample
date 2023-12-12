import 'package:flutter/material.dart';
import 'package:full/features/presentation/common/app_bar.dart';
import 'package:full/features/presentation/common/bottom_nav_bar.dart';

import '../../../../core/util/app_images.dart';
import '../../../../core/util/navigation_routes.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        page: 'Menu',
        backArrow: false,
        logOut: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ORIX NEW ZEALAND',
                    style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                  ),
                  const Text(
                    'Emma Saxon',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                  ),
                  Text('Fleet Manager',
                      style: TextStyle(fontSize: 14, color: Colors.blue[500])),
                ],
              ),
              const SizedBox(height: 15),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.PROFILE);
                },
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Profile',
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Icon(Icons.double_arrow_sharp),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.CREATE_PIN_PAGE);
                },
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Change PIN',
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Icon(Icons.double_arrow_sharp),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.BIOMETRIC_AUTHENTICATION);
                },
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Enable/Disable Biometrics',
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Icon(Icons.double_arrow_sharp),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ORIX Privacy Policy',
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Icon(Icons.double_arrow_sharp),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Terms & Conditions',
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Icon(Icons.double_arrow_sharp),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'End User Licencs Agreement',
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Icon(Icons.double_arrow_sharp),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.logo,
                      width: 100,
                      height: 100,
                    ),
                    const Text('ORIX New Zealand 2023',
                        style: TextStyle(fontSize: 14)),
                    const Text(
                      'CRM CDNZ',
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
