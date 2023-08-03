import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const GNav(
        gap: 8,
        activeColor: Colors.purple,
        // tab button hover color
        haptic: true, // haptic feedback
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(icon: Icons.people, text: 'Residents'),
          GButton(
            icon: Icons.construction,
            text: 'Maintainence',
          ),
          GButton(
            icon: Icons.notifications,
            text: 'Broadcast',
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: Container(
        color: Colors.white,
        margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              AspectRatio(
                aspectRatio: 14.7 / 9,
                child: Stack(
                  children: [
                    DChartPie(
                      data: const [
                        {'domain': 'Collected', 'measure': 35},
                        {'domain': 'Current Due', 'measure': 50},
                        {'domain': 'Over Due', 'measure': 15},
                      ],
                      fillColor: (pieData, index) {
                        switch (pieData['domain']) {
                          case 'Collected':
                            return Colors.green;
                          case 'Current Due':
                            return Colors.purple;
                          case 'Over Due':
                            return Colors.red;
                        }
                      },
                      labelFontSize: 14,
                      labelPosition: PieLabelPosition.outside,
                      labelLineColor: Colors.grey,
                      donutWidth: 20,
                      showLabelLine: true,
                      labelColor: Colors.black,
                      pieLabel: (pieData, index) => pieData['domain'],
                      // pieLabel: (Map<dynamic, dynamic> pieData, int? index) {
                      //   return pieData['domain'];
                      // }
                    ),
                    const Center(
                      child: FittedBox(
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              '25,000 PKR',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                            Center(child: Text('of 100,000 PKR')),
                            Center(child: Text('collected this month')),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    child: const Text('Defaulters: 55/100'),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(137, 10, 165, 0.612),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    child: const Text('Send Alerts'),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.grey[400],
              ),
              Stack(children: [
                const Row(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Announcements',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      child: const Text(
                        'View All',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ]),
              Container(
                  height: 60,
                  // color: Colors.greenAccent,
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Stack(
                    children: [
                      Row(children: [
                        Text('Shortage of water expected at blo.....'),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '26 July',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Stack(children: [
                const Row(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Transactions',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      child: const Text(
                        '+Add Income',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ]),
              Container(
                height: 110,
                // color: Colors.greenAccent,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.circular(8)),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '15 June 2023',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Stack(
                      children: [
                        Row(children: [
                          Text(
                            'Billboard',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '50000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Paid By: Name',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ], // add children in column above this line
          ),
        ),
      ),
    );
  }
}
