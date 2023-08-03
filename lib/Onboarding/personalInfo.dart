import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MyPersonalInfo extends StatefulWidget {
  const MyPersonalInfo({super.key});

  @override
  State<MyPersonalInfo> createState() => _MyPersonalInfoState();
}

class _MyPersonalInfoState extends State<MyPersonalInfo> {
  TextEditingController countryCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              'Personal Info',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Welcome back! Please enter your details.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                Text(
                  'Name *',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8)),
              child: const Row(children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter Full Name'),
                )),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'Role in the Building *',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8)),
              child: const Row(children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'President'),
                )),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'Mobile Number *',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(8)),
              child: InternationalPhoneNumberInput(
                onInputChanged: (value) {},
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: const TextStyle(color: Colors.black),
                formatInput: false,
                hintText: '333 XXX XXXX',
                inputBorder: InputBorder.none,
                selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 36,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'projectInfo');
                },
                // ignore: sort_child_properties_last
                child: const Text('Continue'),
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
