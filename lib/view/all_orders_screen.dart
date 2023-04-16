import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colors.dart';

class AllOrdersScreen extends StatelessWidget {
  const AllOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(backgroundColor: bg, appBar: buildAppBar(),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: card.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'BTCUSDT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
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
                              fontSize: 10),
                        ),
                      ),
                    ),
                    Card(
                      color: yellow.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(3),
                        child: Text(
                          'Isolated 10.00x',
                          style: TextStyle(
                              color: yellow,
                              fontSize: 10),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/externallink.svg',color: Colors.grey,width: 17,)
                  ],
                ),
                const Divider(color: button,thickness: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Position Size',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            hintText: '0.001',
                            hintStyle: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Entry Price',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            hintText: '27,500',
                            hintStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Mark Price',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            hintText: '27,500',
                            hintStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Estimated Liq. Price',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.dotted,
                          color: Colors.transparent,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                color: Colors.grey,
                                offset: Offset(0, -3))
                          ],
                          decorationColor: Colors.grey),
                    ),
                    SizedBox(
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 13,color:yellow,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            hintText: '27,500',
                            hintStyle: TextStyle(fontSize: 13,color:yellow,fontWeight: FontWeight.bold)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Value',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            hintText: '27,500',
                            hintStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Unrealized P&L (%)',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          width:200,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '0.4325 USDT (15.64%)',
                                hintStyle: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        SizedBox(
                          width:200,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '= 0.43 USD',
                                hintStyle: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Realized P&L',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          width:200,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '-0.4325 USDT',
                                hintStyle: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        SizedBox(
                          width:200,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '= 0.43 USD',
                                hintStyle: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'ADL Ranking',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/adl.svg',width: 8,color: Colors.red.shade200,),
                        SvgPicture.asset('assets/icons/adl.svg',width: 8,color: Colors.red.shade300,),
                        SvgPicture.asset('assets/icons/adl.svg',width: 8,color: Colors.grey.withOpacity(0.5),),
                        SvgPicture.asset('assets/icons/adl.svg',width: 8,color: Colors.grey.withOpacity(0.5),),
                        SvgPicture.asset('assets/icons/adl.svg',width: 8,color: Colors.grey.withOpacity(0.5),),
                      ],
                    )
                  ],
                ),
                const Divider(color: button,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'Margin',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width:80,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '2.500 USDT',
                                hintStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 13,)
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'Take Profit/Stop Loss',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children:  const [
                        SizedBox(
                          width:50,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '--',
                                hintStyle: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        Text('/',style: TextStyle(fontSize: 13,color:Colors.grey),),
                        SizedBox(
                          width:45,
                          child: TextField(
                            style: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '27,100',
                                hintStyle: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 13,)
                      ],
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'Trailing Stop',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children:  const [
                        SizedBox(
                          width:50,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '--',
                                hintStyle: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 13,)
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: button,
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
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: card.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'BTCUSDT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
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
                              fontSize: 10),
                        ),
                      ),
                    ),
                    Card(
                      color: yellow.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(3),
                        child: Text(
                          'Isolated 10.00x',
                          style: TextStyle(
                              color: yellow,
                              fontSize: 10),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/externallink.svg',color: Colors.grey,width: 17,)
                  ],
                ),
                const Divider(color: button,thickness: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Position Size',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            hintText: '0.001',
                            hintStyle: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Entry Price',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            hintText: '27,500',
                            hintStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Mark Price',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            hintText: '27,500',
                            hintStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Estimated Liq. Price',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.dotted,
                          color: Colors.transparent,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                color: Colors.grey,
                                offset: Offset(0, -3))
                          ],
                          decorationColor: Colors.grey),
                    ),
                    SizedBox(
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 13,color:yellow,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            hintText: '27,500',
                            hintStyle: TextStyle(fontSize: 13,color:yellow,fontWeight: FontWeight.bold)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Value',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width:80,
                      child: TextField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            hintText: '27,500',
                            hintStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold)
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Unrealized P&L (%)',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          width:200,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '0.4325 USDT (15.64%)',
                                hintStyle: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        SizedBox(
                          width:200,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '= 0.43 USD',
                                hintStyle: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Realized P&L',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          width:200,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '-0.4325 USDT',
                                hintStyle: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        SizedBox(
                          width:200,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '= 0.43 USD',
                                hintStyle: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'ADL Ranking',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/adl.svg',width: 8,color: Colors.red.shade200,),
                        SvgPicture.asset('assets/icons/adl.svg',width: 8,color: Colors.red.shade300,),
                        SvgPicture.asset('assets/icons/adl.svg',width: 8,color: Colors.grey.withOpacity(0.5),),
                        SvgPicture.asset('assets/icons/adl.svg',width: 8,color: Colors.grey.withOpacity(0.5),),
                        SvgPicture.asset('assets/icons/adl.svg',width: 8,color: Colors.grey.withOpacity(0.5),),
                      ],
                    )
                  ],
                ),
                const Divider(color: button,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'Margin',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width:80,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '2.500 USDT',
                                hintStyle: TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 13,)
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'Take Profit/Stop Loss',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children:  const [
                        SizedBox(
                          width:50,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '--',
                                hintStyle: TextStyle(fontSize: 13,color:green,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        Text('/',style: TextStyle(fontSize: 13,color:Colors.grey),),
                        SizedBox(
                          width:45,
                          child: TextField(
                            style: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '27,100',
                                hintStyle: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 13,)
                      ],
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      'Trailing Stop',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children:  const [
                        SizedBox(
                          width:50,
                          child: TextField(
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                                hintText: '--',
                                hintStyle: TextStyle(fontSize: 13,color:red,fontWeight: FontWeight.bold)
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 13,)
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: button,
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
          )
        ],
      ),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: card.withOpacity(0.5),
      bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 130),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'All Orders',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TabBar(
                    labelPadding: const EdgeInsets.symmetric(horizontal: 6),
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    indicatorColor: yellow,
                    labelStyle: GoogleFonts.ibmPlexSans(
                        fontSize: 13, fontWeight: FontWeight.bold),
                    tabs: const [
                      Tab(
                        text: 'Positions',
                      ),
                      Tab(
                        text: 'Current Orders',
                      ),
                      Tab(
                        text: 'Order History',
                      ),
                      Tab(
                        text: 'Realized P&L',
                      )
                    ]),
              ),
              Transform.translate(
                  offset: const Offset(0, -8),
                  child: const Divider(
                    color: button,
                    thickness: 1,
                  )),
              Transform.translate(
                offset: const Offset(0, -8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Text(
                        'All Contracts',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      const Icon(
                        Icons.arrow_drop_down_rounded,
                        color: Colors.grey,
                        size: 26,
                      ),
                      const Spacer(),
                      Card(
                        color: button,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Close All',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
