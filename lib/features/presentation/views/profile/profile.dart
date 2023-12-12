import 'package:flutter/material.dart';
import 'package:full/features/presentation/common/bottom_nav_bar.dart';
import 'package:full/features/presentation/views/menu/menu.dart';

import 'edit_profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Menu()));
            },
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ORIX NEW ZEALAND',
                        style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                      ),
                      const Text(
                        'Emma Saxon',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w400),
                      ),
                      // Text('Fleet Manager',
                      //     style:
                      //         TextStyle(fontSize: 14, color: Colors.blue[500])),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditProfile()));
                      },
                      icon: const Icon(Icons.edit))
                ],
              ),
            ),
            Text('Fleet Manager',
                style: TextStyle(fontSize: 14, color: Colors.blue[500])),
            const SizedBox(height: 5),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 5.0, bottom: 5, top: 5),
              child: Text('Contact Details',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MOBILE',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '+64 27 491 7115',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('EMAIL',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Text('emma.saxon@orix.co.nz',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('PHONE',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Text('0800 106 749',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(
                left: 5.0,
                bottom: 10,
              ),
              child: Text('Address Details',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleButtons(
                  isSelected: isSelected,
                  onPressed: (int index) {
                    setState(() {
                      isSelected[index] = !isSelected[index];
                      if (index == 0) {
                        isSelected[1] = !isSelected[0];
                      } else {
                        isSelected[0] = !isSelected[1];
                      }
                    });
                  },
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                          color:
                              isSelected[0] ? Colors.indigo[900] : Colors.white,
                          border: Border.all(
                              color: isSelected[0] ? Colors.blue : Colors.white,
                              width: 5)),
                      child: Center(
                          child: Text('PHYSICAL',
                              style: TextStyle(
                                  color: isSelected[0]
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14))),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                          color:
                              isSelected[1] ? Colors.indigo[900] : Colors.white,
                          border: Border.all(
                              color: isSelected[1] ? Colors.blue : Colors.white,
                              width: 5)),
                      child: Center(
                          child: Text(
                        'POSTAL',
                        style: TextStyle(
                            color: isSelected[1] ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      )),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('C/O',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Text('n/a',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('FLAT',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Text('n/a',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ADDRESS',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Text('32 Manukau Road',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('SUBURB',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Text('Epsom',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('TOWN/CITY',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Text('Aukckland',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('POSTCODE',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Text('31023',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
