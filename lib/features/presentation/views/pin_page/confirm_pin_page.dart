import 'package:flutter/material.dart';
import 'package:full/core/util/navigation_routes.dart';
import 'package:full/features/presentation/common/bg_img.dart';
import 'package:full/features/presentation/views/pin_page/create_pin_page.dart';

import '../../common/circle.dart';
import '../../common/number_pad.dart';

class ConfirmPinPage extends StatefulWidget {
  final String pin;

  const ConfirmPinPage({super.key, required this.pin});

  @override
  State<ConfirmPinPage> createState() => _ConfirmPinPageState();
}

class _ConfirmPinPageState extends State<ConfirmPinPage> {
  TextEditingController confirmNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BgImg(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                const Text('CONFIRM 4-DIGIT LOGIN PIN',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white60,
                    )),
                CirclesPage(
                  pinController: confirmNumberController,
                ),
                NumberPad(
                  numberController: confirmNumberController,
                  page: 2,
                  confirmNumberController: widget.pin,
                ),
                TextButton(
                  onPressed: () {Navigator.pushNamed(context, Routes.CREATE_PIN_PAGE);},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
