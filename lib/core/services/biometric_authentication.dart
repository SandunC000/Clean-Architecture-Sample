import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

import '../util/navigation_routes.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Enable Fingerprint',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 38),
              ),
              const SizedBox(height: 28),
              const Text("use fingerprint",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
              const SizedBox(
                height: 28,
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: ElevatedButton.icon(
                      onPressed: () async {
                        bool auth = await Authentication.authentication();
                        print("can authenticate : $auth");
                        if(auth){
                          Navigator.pushNamed(context, Routes.MENU);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Authentication Failed'),));
                        }
                      },
                      icon: const Icon(Icons.fingerprint),
                      label: const Text("Authenticate"))),
              const SizedBox(height: 50),
              Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: ElevatedButton.icon(
                      onPressed: () {Navigator.pushNamed(context, Routes.MENU);},
                      icon: const Icon(Icons.arrow_back),
                      label: const Text("Back")))
            ],
          ),
        ),
      ),
    );
  }
}

class Authentication {
  static final _auth = LocalAuthentication();

  static Future<bool> canAuthenticate() async =>
      await _auth.canCheckBiometrics || await _auth.isDeviceSupported();

  static Future<bool> authentication() async {
    try{
      if(!await canAuthenticate()) return false;
      return await _auth.authenticate(localizedReason: "get into the app");
    } catch(e){
      print('e');
      return false;
    }
  }
}
