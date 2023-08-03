import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MyProjectInfo extends StatefulWidget {
  const MyProjectInfo({super.key});

  @override
  State<MyProjectInfo> createState() => _MyProjectInfoState();
}

class _MyProjectInfoState extends State<MyProjectInfo> {
  bool? isChecked = false;
  var _city = "-1";
  var _province = "-1";

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
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'images/bootstrap-logo-shadow.png',
              height: 70,
              width: 70,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Project Info',
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
                  'Project Name *',
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
                      border: InputBorder.none, hintText: 'Project Name'),
                )),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'City *',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 150,
                ),
                Text(
                  'Province *',
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
            Row(
              children: [
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: DropdownButton(
                    value: _city,
                    onChanged: (v) {
                      _city = v!;
                      setState(() {});
                    },
                    items: const [
                      DropdownMenuItem(
                        value: "-1",
                        child: Text(" Select City          "),
                      ),
                      DropdownMenuItem(
                        value: "-2",
                        child: Text(" Karachi"),
                      ),
                      DropdownMenuItem(
                        value: "-3",
                        child: Text(" Hyderabad"),
                      ),
                      DropdownMenuItem(
                        value: "-4",
                        child: Text(" Sukkur"),
                      ),
                      DropdownMenuItem(
                        value: "-5",
                        child: Text(" Lahore"),
                      ),
                      DropdownMenuItem(
                        value: "-6",
                        child: Text(" Islamabad"),
                      ),
                      DropdownMenuItem(
                        value: "-7",
                        child: Text(" Peshawar"),
                      ),
                      DropdownMenuItem(
                        value: "-8",
                        child: Text(" Mardan"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 43,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: DropdownButton(
                    value: _province,
                    onChanged: (v) {
                      _province = v!;
                      setState(() {});
                    },
                    items: const [
                      DropdownMenuItem(
                        value: "-1",
                        child: Text(" Select Province       "),
                      ),
                      DropdownMenuItem(
                        value: "-2",
                        child: Text(" Sindh"),
                      ),
                      DropdownMenuItem(
                        value: "-3",
                        child: Text(" Punjab"),
                      ),
                      DropdownMenuItem(
                        value: "-4",
                        child: Text(" Balochistan"),
                      ),
                      DropdownMenuItem(
                        value: "-5",
                        child: Text(" KPK"),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  'Address *',
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
                      border: InputBorder.none, hintText: 'Address'),
                )),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'Union Cell Number *',
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
            Row(children: [
              Checkbox(
                  value: isChecked,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked = newBool;
                    });
                  }),
              const Expanded(
                child: Text(
                  'Same as personal cell number',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ]),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 36,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                },
                // ignore: sort_child_properties_last
                child: const Text('Continue'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(137, 10, 165, 0.612),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
