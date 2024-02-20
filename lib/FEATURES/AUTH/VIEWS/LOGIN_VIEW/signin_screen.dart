import 'package:flutter/material.dart';
import 'package:fly_vihanga/COMMON/size_box.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/cust_image_strings.dart';
import 'package:fly_vihanga/UTILS/DEVICE/cust_device_settings.dart';
import 'package:iconsax/iconsax.dart';

class SignInScreeen extends StatefulWidget {
  const SignInScreeen({super.key});

  @override
  State<SignInScreeen> createState() => _SignInScreeenState();
}

class _SignInScreeenState extends State<SignInScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.2),
      body: buildBody(),
    );
  }

  buildBody() {
    return SizedBox(
      height: mqH(context),
      width: mqW(context),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(20),
                child: const Image(image: AssetImage(CustImageStg.applogo))),
            sH(10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_inbox4),
                    label: Text('Email')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.lock),
                    suffixIcon: Icon(Iconsax.password_check),
                    label: Text('Password')),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Switch(value: true, onChanged: ((value) => {})),
                    const Text('Remember Me')
                  ],
                ),
                TextButton(
                    onPressed: () {}, child: const Text('Forget Password ?'))
              ],
            ),
            Container(
                margin: const EdgeInsets.all(20),
                width: mqW(context),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Sign In"))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't Have Account ?"),
                TextButton(onPressed: () {}, child: const Text('SignUp'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
