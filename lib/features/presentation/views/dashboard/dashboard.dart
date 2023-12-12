import 'package:full/core/util/app_colors.dart';
import 'package:full/features/presentation/common/bottom_nav_bar.dart';
import 'package:full/features/presentation/common/fleet_status_tile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Fleet Dashboard",
            style: TextStyle(color: AppColors.appColorWhite),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: AppColors.appColorWhite,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Text(
                'Hi Emma',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.colorPrimary,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.fact_check_rounded,
                      color: AppColors.appColorWhite,
                      size: 30,
                    ),
                  ),
                  Text("PENDING APPROVALS",
                      style: TextStyle(color: AppColors.appColorWhite, fontSize: 20)),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text("04",
                        style: TextStyle(color: AppColors.appColorWhite, fontSize: 20)),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Divider(thickness: 1, color: AppColors.appGrayColor),
          const SizedBox(height: 10),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Current Fleet Status',
                    style: TextStyle(fontSize: 18)),
              )),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FleetStatusTile(label: 'SERVICING', count: 2),
              SizedBox(width: 20),
              FleetStatusTile(label: 'WOF/COF', count: 3),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FleetStatusTile(label: 'REGISTRATION', count: 0),
              SizedBox(width: 20),
              FleetStatusTile(label: 'EXPIRED CONTRACTS', count: 2),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FleetStatusTile(label: 'VEHICLE OFF-ROAD', count: 2),
              SizedBox(width: 20),
              FleetStatusTile(label: 'ROAD USER CHARGES', count: 3),
            ],
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                  border: Border.all(color: AppColors.colorSecondary, width: 1.5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: AppColors.colorSecondary,
                      size: 30,
                    ),
                  ),
                  Text("VEHICLES ON ORDER",
                      style: TextStyle(color: AppColors.colorSecondary, fontSize: 20)),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text("02",
                        style: TextStyle(color: AppColors.colorSecondary, fontSize: 20)),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_in_talk_outlined,
                  size: 25,
                ),
                SizedBox(width: 15),
                Text(
                  "Call Account Manager",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
