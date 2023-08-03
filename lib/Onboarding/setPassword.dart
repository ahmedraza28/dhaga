import 'package:flutter/material.dart';

class MySetPassword extends StatefulWidget {
  const MySetPassword({super.key});

  @override
  State<MySetPassword> createState() => _MySetPasswordState();
}

class _MySetPasswordState extends State<MySetPassword> {
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
              'Set Password',
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
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  'Pin Code *',
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
                      border: InputBorder.none, hintText: 'Add Pin code'),
                )),
                Icon(Icons.remove_red_eye_outlined),
                SizedBox(
                  width: 10,
                )
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  'Confirm Pin *',
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
                      border: InputBorder.none, hintText: 'Re-enter Pin Code'),
                )),
                Icon(Icons.remove_red_eye_outlined),
                SizedBox(
                  width: 10,
                )
              ]),
            ),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 36,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'personalInfo');
                },
                // ignore: sort_child_properties_last
                child: const Text('Continue'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(137, 10, 165, 0.612),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'signUp');
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 130, 27, 87)),
              ),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    ));
  }
}
