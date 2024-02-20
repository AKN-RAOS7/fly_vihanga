import 'package:flutter/material.dart';
import 'package:fly_vihanga/COMMON/size_box.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/cust_image_strings.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/project_text.dart';
import 'package:fly_vihanga/UTILS/DEVICE/cust_device_settings.dart';
import 'package:fly_vihanga/UTILS/THEMES/cust_text_theme.dart';
import 'package:pinput/pinput.dart';

class VerifyNewAccount extends StatefulWidget {
  const VerifyNewAccount({super.key});

  @override
  State<VerifyNewAccount> createState() => _VerifyNewAccountState();
}

class _VerifyNewAccountState extends State<VerifyNewAccount> {
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
                    "Verify Your Identity",
                    style: ttsTMedium(context)
                        .copyWith(fontSize: 30.0, fontFamily: fontsFamily2),
                  ),
                  Text(
                    "We Have sent the code to your Email ",
                    style: ttsTSmall(context).copyWith(),
                  ),
                ],
              ),
            ),
            sH(10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(CustImageStg.verify),
                    fit: BoxFit.cover,
                  )),
              height: mqH(context) / 3,
              width: mqW(context) * 0.8,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Please Enter the 4 digit code sent \n to XYZ********@gmail.com",
                    style: ttsTLarge(context),
                  ),
                ),
                Pinput(
                  onCompleted: (value) {},
                )
              ],
            ),
            sH(30),
            const Text('Resent Code in 59s '),
            sH(30),
            Container(
                margin: const EdgeInsets.all(20),
                width: mqW(context),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Verify"))),
          ],
        ),
      ),
    );
  }
}
