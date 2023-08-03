import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    // final submittedPinTheme = defaultPinTheme.copyWith(
    //   decoration: defaultPinTheme.decoration?.copyWith(
    //     color: const Color.fromRGBO(234, 239, 243, 1),
    //   ),
    // );

    return Scaffold(
        body: Container(
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/bootstrap-logo-shadow.png',
              height: 70,
              width: 70,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Enter OTP',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Enter 6 digit code sent to your number',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Pinput(
              // defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              // submittedPinTheme: submittedPinTheme,
              length: 6,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 130, 27, 87)),
                  ),
                  child: const Text(
                      'Didn’t receive the code? Resend in 59 seconds. '),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 36,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'setPassword');
                },
                // ignore: sort_child_properties_last
                child: const Text('Next'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(137, 10, 165, 0.612),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
