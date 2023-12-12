import 'package:flutter/material.dart';
import 'package:full/features/presentation/common/app_bar.dart';
import 'package:full/features/presentation/views/profile/profile.dart';

import 'package:full/features/presentation/common/bottom_nav_bar.dart';
import 'package:full/features/presentation/views/menu/menu.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(page: 'Edit Profile', backArrow: true, logOut: false,),
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
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.indigo,
                      ))
                ],
              ),
            ),
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
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('PHONE',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '0800 106 749',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('JOB TITLE',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Center(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Fleet Manager',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
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
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('C/O',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Center(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'n/a',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('FLAT',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Center(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'n/a',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('ADDRESS',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Center(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '32 Manukau Road',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('SUBURB',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Center(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Epsom',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('TOWN/CITY',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Center(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Aukckland',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('POSTCODE',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  Center(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '1023',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
