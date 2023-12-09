import 'package:flutter/material.dart';
import 'package:nomad1/components/card.dart';
import 'package:nomad1/components/mybutton.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                       crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('hello selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                        Text(
                          'welcome back',
                          style: TextStyle(
                            // const와 withOpacity와의 관계
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 60,),
                Text('Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 10,),
                // \를 사용해서 변수가 아님을 증명
                Text('\$5 194 482',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    MyButton(value: 'Transfer', bgColor: Colors.amber, textColor: Colors.black,),
                    SizedBox(width: 20,),
                    MyButton(value: 'Request', bgColor: Colors.black, textColor: Colors.white,),
                  ],
                ),

                const SizedBox(height: 80,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Wallets',
                      style:
                      TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600, ),
                    ),
                    Text('View All',
                      style: TextStyle(color: Colors.white.withOpacity(0.8), ),),
                  ],
                ),
                const SizedBox(height: 20,),
                const MyCard(name: 'Euro', code: 'EUR', amount: '6 428', icon:  Icons.euro_rounded, isInverted: false,),
                const MyCard(name: 'BitCoin', code: 'BTC', amount: '55 622', icon:  Icons.currency_bitcoin, isInverted: true,),
                const MyCard(name: 'Dollor', code: 'USD', amount: '4 428', icon:  Icons.attach_money, isInverted: false,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
