import 'package:flutter/material.dart';
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80,),

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
              const SizedBox(height: 20,),
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

              Container(
                // 어떤 아이템이 오버플로우 되었을때 설정을 해주는 것
                // 나머지부분 사라짐!
                clipBehavior: Clip.hardEdge,

                decoration: BoxDecoration(
                  color: const Color(0xFF1F2123),
                  borderRadius: BorderRadius.circular(20),
                ),
                child:  Padding(
                  padding:  const EdgeInsets.symmetric(vertical: 20, horizontal: 30, ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Euro', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),),

                          const SizedBox(height: 5,),
                          Row(
                            children: [
                              const Text('6 428',
                                style: TextStyle(
                                    color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Text('EUR',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                  fontSize: 18
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // 이거 중요! -> 감싸는 카드의 크기는 고정이고 안에 아이콘만 변경됨
                      Transform.scale(
                        scale: 2.5,
                        child: Transform.translate(
                          offset: const Offset(5,2),
                            child: const Icon(Icons.euro_rounded, size: 70, color: Colors.white,)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
