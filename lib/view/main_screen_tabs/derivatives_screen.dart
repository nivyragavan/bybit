import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../constant/colors.dart';
import '../all_orders_screen.dart';

class DerivativesScreen extends StatefulWidget {
  const DerivativesScreen({Key? key}) : super(key: key);

  @override
  State<DerivativesScreen> createState() => _DerivativesScreenState();
}

class _DerivativesScreenState extends State<DerivativesScreen> {
  bool value = false;
  dynamic currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              buildAppBar(),
              SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  width: double.infinity,
                  color: card.withOpacity(0.5),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Card(
                            color: card,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: const Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Cross',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                'Funding Rate / Countdown',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationStyle: TextDecorationStyle.dotted,
                                    color: Colors.transparent,
                                    fontSize: 11,
                                    height: 2,
                                    shadows: [
                                      Shadow(
                                          color: Colors.grey,
                                          offset: Offset(0, -3))
                                    ],
                                    decorationColor: Colors.grey),
                              ),
                              Text(
                                '0.0088% / 02:26:02',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: Get.width * 0.48,
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'Available',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Text(
                                      '0.0000 USDT',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.add_circle_outline_sharp,
                                      color: yellow,
                                      size: 15,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: Get.width * 0.52,
                                  height: 30,
                                  padding:
                                      const EdgeInsets.only(left: 15, right: 5),
                                  decoration: BoxDecoration(
                                      color: button,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Limit',
                                        style: TextStyle(
                                            color: Colors.white,
                                            // fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down_rounded,
                                        color: Colors.grey.withOpacity(0.4),
                                        size: 30,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: Get.width * 0.52,
                                  height: 45,
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 10),
                                  decoration: BoxDecoration(
                                      color: button,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Order Price',
                                        style: TextStyle(
                                            color: Colors.grey.withOpacity(0.4),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Spacer(),
                                      Icon(
                                        Icons.remove,
                                        color: Colors.grey.withOpacity(0.4),
                                        size: 25,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        width: 1,
                                        height: 12,
                                        color: Colors.grey.withOpacity(0.4),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: Colors.grey.withOpacity(0.4),
                                        size: 25,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: Get.width * 0.52,
                                  height: 45,
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  decoration: BoxDecoration(
                                      color: button,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Qty',
                                        style: TextStyle(
                                            color: Colors.grey.withOpacity(0.4),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Spacer(),
                                      const Text(
                                        'BTC',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SfSlider(
                                  value: currentValue,
                                  onChanged: (value) {
                                    setState(() {
                                      currentValue = value;
                                    });
                                  },
                                  min: 0.0,
                                  max: 100.0,
                                  activeColor: yellow,
                                  inactiveColor: button,
                                  enableTooltip: true,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: Get.width * 0.52,
                                  height: 50,
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 8, bottom: 8),
                                  decoration: BoxDecoration(
                                      color: button,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'Value',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11,
                                            ),
                                          ),
                                          const Spacer(),
                                          RichText(
                                              text: const TextSpan(
                                                  text: '0',
                                                  style: TextStyle(
                                                    color: green,
                                                    fontSize: 11,
                                                  ),
                                                  children: [
                                                TextSpan(
                                                  text: '/',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 11,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '0',
                                                  style: TextStyle(
                                                    color: red,
                                                    fontSize: 11,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'USDT',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 11,
                                                  ),
                                                )
                                              ]))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            'Cost',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationStyle:
                                                    TextDecorationStyle.dotted,
                                                color: Colors.transparent,
                                                fontSize: 11,
                                                shadows: [
                                                  Shadow(
                                                      color: Colors.grey,
                                                      offset: Offset(0, -3))
                                                ],
                                                decorationColor: Colors.grey),
                                          ),
                                          const Spacer(),
                                          RichText(
                                              text: const TextSpan(
                                                  text: '0',
                                                  style: TextStyle(
                                                    color: green,
                                                    fontSize: 11,
                                                  ),
                                                  children: [
                                                TextSpan(
                                                  text: '/',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 11,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '0',
                                                  style: TextStyle(
                                                    color: red,
                                                    fontSize: 11,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'USDT',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 11,
                                                  ),
                                                )
                                              ]))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  width: Get.width * 0.52,
                                  height: 45,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: green,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: const Text(
                                    'Login Now',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Transform.translate(
                                      offset: const Offset(-10, 0),
                                      child: Transform.scale(
                                        scale: 0.7,
                                        child: Checkbox(
                                            value: value,
                                            side: const BorderSide(
                                                color: Colors.grey),
                                            onChanged: (value) {
                                              setState(() {
                                                value = true;
                                              });
                                            }),
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: const Offset(-20, 0),
                                      child: const Text(
                                        'Post-Only',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      'GTC',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Icon(
                                      Icons.arrow_drop_down_rounded,
                                      color: Colors.grey,
                                      size: 25,
                                    )
                                  ],
                                ),
                                Transform.translate(
                                  offset: const Offset(0, -20),
                                  child: Row(
                                    children: [
                                      Transform.translate(
                                        offset: const Offset(-10, 0),
                                        child: Transform.scale(
                                          scale: 0.7,
                                          child: Checkbox(
                                              value: false,
                                              side: const BorderSide(
                                                  color: Colors.grey),
                                              onChanged: (value) {}),
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: const Offset(-20, 0),
                                        child: const Text(
                                          'Reduce-Only',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: SizedBox(
                              width: Get.width * 0.39,
                              child: Align(
                                alignment:Alignment.topCenter,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Price',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              '(USDT)',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: const [
                                            Text(
                                              'Quantity',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              '(BTC)',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: red.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: red.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: red.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: red.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: red.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: red.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              '27.978.50',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: green,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '27,978.50',
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationStyle:
                                                      TextDecorationStyle.dotted,
                                                  color: Colors.transparent,
                                                  fontSize: 13,
                                                  height: 2,
                                                  shadows: [
                                                    Shadow(
                                                        color: Colors.grey,
                                                        offset: Offset(0, -3))
                                                  ],
                                                  decorationColor: Colors.grey),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              'More',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              color: Colors.white,
                                              size: 11,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: green.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: green.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: green.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: green.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: green.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '27,979.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: green.withOpacity(0.6),
                                          ),
                                        ),
                                        const Text(
                                          '2.639',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: Get.width * 0.28,
                                          height: 30,
                                          padding: const EdgeInsets.only(
                                              left: 15, right: 5),
                                          decoration: BoxDecoration(
                                              color: button,
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                '0.1',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    // fontSize: 13,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down_rounded,
                                                color:
                                                    Colors.grey.withOpacity(0.4),
                                                size: 30,
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                              color: button,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      'assets/icons/box.png'))),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: TabBar(
                                labelPadding: EdgeInsets.zero,
                                indicatorSize: TabBarIndicatorSize.label,
                                indicatorColor: yellow,
                                labelStyle: GoogleFonts.ibmPlexSans(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                tabs: const [
                                  Tab(
                                    text: 'Positions(5)',
                                  ),
                                  Tab(
                                    text: 'Orders(2)',
                                  )
                                ]),
                          ),
                          const Spacer(),
                          TextButton.icon(
                            onPressed: () {
                              Get.to(const AllOrdersScreen());
                            },
                            label: const Text(
                              'All Orders',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                            icon: const Icon(
                              Icons.list,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      Transform.translate(
                          offset: const Offset(0, -8),
                          child: const Divider(
                            color: button,
                            thickness: 2,
                          )),
                      Transform.translate(
                        offset: const Offset(0, -12),
                        child: Row(
                          children: [
                            const Text(
                              'All Contracts',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Icon(
                              Icons.arrow_drop_down_rounded,
                              color: Colors.grey,
                              size: 30,
                            ),
                            const Spacer(),
                            Card(
                              color: card,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Close All',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                          offset: const Offset(0, -16),
                          child: const Divider(
                            color: button,
                            thickness: 2,
                          )),
                      Transform.translate(
                        offset: const Offset(0, -10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'BTCUSDT',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        Card(
                                          color: green.withOpacity(0.2),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5)),
                                          child: const Padding(
                                            padding: EdgeInsets.all(3),
                                            child: Text(
                                              'Long',
                                              style: TextStyle(
                                                  color: green,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'Isolated 10.00x',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'Unrealized P&L',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10),
                                        ),
                                        const SizedBox(width:5),
                                        SvgPicture.asset('assets/icons/externallink.svg',color: Colors.grey,)
                                      ],
                                    ),
                                    const SizedBox(height: 3,),
                                    const Text(
                                      '0.43(15.63%)',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height:10,),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Position Size',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: '0.001',
                                            hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Entry Price',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Mark Price',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Estimated Liq. Price',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationStyle: TextDecorationStyle.dotted,
                                          color: Colors.transparent,
                                          fontSize: 10,
                                          shadows: [
                                            Shadow(
                                                color: Colors.grey,
                                                offset: Offset(0, -3))
                                          ],
                                          decorationColor: Colors.grey),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: yellow),
                                          textAlign:TextAlign.end,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: yellow)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Transform.translate(
                              offset:const Offset(0, -20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                      color: card,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Center(
                                        child: Padding(
                                            padding:const EdgeInsets.all(8),
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: '--',
                                                    style: TextStyle(
                                                      color: green,
                                                      fontSize: 12,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: '/',
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '27,100',
                                                        style: TextStyle(
                                                          color: red,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ]))
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Card(
                                      color: card,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      child: const Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            'Close By',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        Transform.translate(
                          offset:const Offset(0, -15),
                          child:Divider(thickness: 2,color: button,)),
                            Transform.translate(
                              offset: const Offset(0, -10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'BTCUSDT',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          Card(
                                            color: red.withOpacity(0.2),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5)),
                                            child: const Padding(
                                              padding: EdgeInsets.all(3),
                                              child: Text(
                                                'Short',
                                                style: TextStyle(
                                                    color: red,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        'Isolated 10.00x',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'Unrealized P&L',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10),
                                          ),
                                          const SizedBox(width:5),
                                          SvgPicture.asset('assets/icons/externallink.svg',color: Colors.grey,)
                                        ],
                                      ),
                                      const SizedBox(height: 3,),
                                      const Text(
                                        '0.43(15.63%)',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Position Size',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Entry Price',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Mark Price',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Estimated Liq. Price',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationStyle: TextDecorationStyle.dotted,
                                          color: Colors.transparent,
                                          fontSize: 10,
                                          shadows: [
                                            Shadow(
                                                color: Colors.grey,
                                                offset: Offset(0, -3))
                                          ],
                                          decorationColor: Colors.grey),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: yellow),
                                          textAlign:TextAlign.end,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: yellow)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Transform.translate(
                              offset:const Offset(0, -20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                      color: card,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Center(
                                        child: Padding(
                                            padding:const EdgeInsets.all(8),
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: '--',
                                                    style: TextStyle(
                                                      color: green,
                                                      fontSize: 12,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: '/',
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '27,100',
                                                        style: TextStyle(
                                                          color: red,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ]))
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Card(
                                      color: card,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      child: const Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            'Close By',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Transform.translate(
                                offset:const Offset(0, -15),
                                child:Divider(thickness: 2,color: button,)),
                            Transform.translate(
                              offset: const Offset(0, -10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'DASHUSDT',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          Card(
                                            color: red.withOpacity(0.2),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5)),
                                            child: const Padding(
                                              padding: EdgeInsets.all(3),
                                              child: Text(
                                                'Short',
                                                style: TextStyle(
                                                    color: red,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        'Cross 10.00x',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'Unrealized P&L',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10),
                                          ),
                                          const SizedBox(width:5),
                                          SvgPicture.asset('assets/icons/externallink.svg',color: Colors.grey,)
                                        ],
                                      ),
                                      const SizedBox(height: 3,),
                                      const Text(
                                        '0.43(15.63%)',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Position Size',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Entry Price',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Mark Price',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Estimated Liq. Price',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationStyle: TextDecorationStyle.dotted,
                                          color: Colors.transparent,
                                          fontSize: 10,
                                          shadows: [
                                            Shadow(
                                                color: Colors.grey,
                                                offset: Offset(0, -3))
                                          ],
                                          decorationColor: Colors.grey),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: yellow),
                                          textAlign:TextAlign.end,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: yellow)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Transform.translate(
                              offset:const Offset(0, -20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                      color: card,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      child: const Center(
                                        child: Padding(
                                            padding:EdgeInsets.all(8),
                                            child: Text(
                                              'Set TP/SL',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Card(
                                      color: card,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      child: const Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            'Close By',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Transform.translate(
                                offset:const Offset(0, -15),
                                child:Divider(thickness: 2,color: button,)),
                            Transform.translate(
                              offset: const Offset(0, -10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'MKRUSDT',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          Card(
                                            color: green.withOpacity(0.2),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5)),
                                            child: const Padding(
                                              padding: EdgeInsets.all(3),
                                              child: Text(
                                                'Long',
                                                style: TextStyle(
                                                    color: green,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        'Cross 10.00x',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'Unrealized P&L',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10),
                                          ),
                                          const SizedBox(width:5),
                                          SvgPicture.asset('assets/icons/externallink.svg',color: Colors.grey,)
                                        ],
                                      ),
                                      const SizedBox(height: 3,),
                                      const Text(
                                        '0.43(15.63%)',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Position Size',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Entry Price',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Mark Price',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: Colors.white),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Estimated Liq. Price',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationStyle: TextDecorationStyle.dotted,
                                          color: Colors.transparent,
                                          fontSize: 10,
                                          shadows: [
                                            Shadow(
                                                color: Colors.grey,
                                                offset: Offset(0, -3))
                                          ],
                                          decorationColor: Colors.grey),
                                    ),
                                    Transform.translate(
                                      offset:const Offset(0,-14),
                                      child: const SizedBox(
                                        width:80,
                                        child: TextField(
                                          style: TextStyle(fontSize: 13,color: yellow),
                                          textAlign:TextAlign.end,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '0.001',
                                              hintStyle: TextStyle(fontSize: 13,color: yellow)
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Transform.translate(
                              offset:const Offset(0, -20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                      color: card,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      child: const Center(
                                        child: Padding(
                                          padding:EdgeInsets.all(8),
                                          child: Text(
                                            'Set TP/SL',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Card(
                                      color: card,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      child: const Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            'Close By',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Transform.translate(
                                offset:const Offset(0, -15),
                                child:Divider(thickness: 2,color: button,)),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]))
            ],
          ),
        ),
      ),
    );
  }

  buildAppBar() {
    return SliverAppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: TabBar(
            labelPadding: const EdgeInsets.symmetric(horizontal: 10),
            isScrollable: true,
            indicator: const BoxDecoration(),
            labelStyle: GoogleFonts.ibmPlexSans(
                fontSize: 16, fontWeight: FontWeight.w500),
            tabs: const [
              Tab(text: 'USDT-Prep'),
              Tab(text: 'USDC Contacts'),
              Tab(text: 'Inverse'),
              Tab(text: 'Option'),
            ]),
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 80),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 5),
              decoration: BoxDecoration(
                  color: card.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 28,
                    decoration: BoxDecoration(
                        color: button, borderRadius: BorderRadius.circular(5)),
                    child: TabBar(
                        labelPadding: EdgeInsets.zero,
                        labelStyle: GoogleFonts.ibmPlexSans(
                            fontSize: 16, fontWeight: FontWeight.w500),
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white12),
                        tabs: const [
                          Tab(
                            text: 'Charts',
                          ),
                          Tab(
                            text: 'Trade',
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/menu.png',
                        width: 17,
                        height: 17,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'BTCUSDT',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Card(
                        color: green.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: const Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            '+1.09%',
                            style: TextStyle(
                                color: green,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.more_horiz,
                        size: 30,
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
