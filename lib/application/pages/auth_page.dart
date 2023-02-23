import 'package:flutter/material.dart';
import 'package:multi_plateform_test/application/core/services/device_info.dart';
import 'package:multi_plateform_test/application/core/widgets/login_form.dart';
class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    if(DeviceScreen.get(context) == FormFactorType.monitor
        || DeviceScreen.get(context) == FormFactorType.tablet){
      return Scaffold(
        body:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if(DeviceOS.isIOS) const Text("Thank you for join us with your iPhone device"),
            if(DeviceOS.isAndroid) const Text("Thank you for join us with your android device"),
            if(DeviceOS.isLinux) const Text("Thank you for join us with your linux desktop"),
            if(DeviceOS.isWeb) const Text("Thank you for join us on the web"),

            SizedBox(
              width: MediaQuery.of(context).size.width/2,
              child: const LoginForm()
            )
          ],
        ),
      );
    }

    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if(DeviceOS.isIOS) const Text("Thank you for join us with your iPhone device"),
          if(DeviceOS.isAndroid) const Text("Thank you for join us with your android device"),
          if(DeviceOS.isLinux) const Text("Thank you for join us with your linux desktop"),
          if(DeviceOS.isWeb) const Text("Thank you for join us on the web"),

          const LoginForm()
        ],
      ),
    );

  }
}
