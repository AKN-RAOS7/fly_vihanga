import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fly_vihanga/COMMON/size_box.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/cust_image_strings.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/project_text.dart';
import 'package:fly_vihanga/UTILS/DEVICE/cust_device_settings.dart';
import 'package:fly_vihanga/UTILS/THEMES/cust_text_theme.dart';
import 'package:iconsax/iconsax.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({super.key});

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Create New Account ",
                    style: ttsTMedium(context)
                        .copyWith(fontSize: 30.0, fontFamily: fontsFamily2),
                  ),
                  Text(
                    "Enter Your Details To Create Account",
                    style: ttsTSmall(context).copyWith(),
                  ),
                ],
              ),
            ),
            sH(10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.personalcard),
                    label: Text('Name')),
              ),
            ),
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.lock),
                    suffixIcon: Icon(Iconsax.password_check),
                    label: Text('Comfirm Password')),
              ),
            ),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Expanded(
                  child: Text(
                      "By signing up you agree to our terms and conditions , privacy policy"),
                )
              ],
            ),
            Container(
                margin: const EdgeInsets.all(20),
                width: mqW(context),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Sign Up"))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Have Account ?"),
                TextButton(onPressed: () {}, child: const Text('Sign In'))
              ],
            ),
            sH(10),
            const Text(
                '------------------------ Or --------------------------'),
            sH(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset(
                      CustImageStg.google,
                      width: 50,
                      height: 50,
                    )),
                sW(20),
                SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset(
                      CustImageStg.facebook,
                      width: 50,
                      height: 50,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
