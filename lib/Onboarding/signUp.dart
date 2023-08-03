import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
// import 'package:countries_flag/countries_flag.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({super.key});

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  TextEditingController countryCode = TextEditingController();
  bool? isChecked = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    countryCode.text = "+92";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: formKey,
            child: Container(
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
                      'Sign Up',
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
                    // Container(
                    //   height: 55,
                    //   decoration: BoxDecoration(
                    //       border: Border.all(width: 1, color: Colors.grey),
                    //       borderRadius: BorderRadius.circular(8)),
                    //   child: Row(children: [
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     CountriesFlag(
                    //       Flags.pakistan,
                    //       width: 30,
                    //       height: 30,
                    //     ),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     SizedBox(
                    //       width: 40,
                    //       child: TextField(
                    //         controller: countryCode,
                    //         decoration:
                    //             const InputDecoration(border: InputBorder.none),
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     const Text(
                    //       "|",
                    //       style: TextStyle(fontSize: 33, color: Colors.grey),
                    //     ),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     const Expanded(
                    //         child: TextField(
                    //       decoration: InputDecoration(
                    //           border: InputBorder.none,
                    //           hintText: '333 XXX XXXX'),
                    //     ))
                    //   ]),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          'I have read and accept Terms and Conditions',
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
                          Navigator.pushNamed(context, 'otp');
                        },
                        // ignore: sort_child_properties_last
                        child: const Text('Continue'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(137, 10, 165, 0.612),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4))),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'signIn');
                      },
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 130, 27, 87)),
                      ),
                      child: const Text('Sign In'),
                    ),
                  ],
                ),
              ),
            )));
  }
}
