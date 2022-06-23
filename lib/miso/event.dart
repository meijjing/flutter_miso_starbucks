import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Event extends StatelessWidget {
  const Event({Key? key}) : super(key: key);

  final String backgroundImgUrl =
      "https://i.ibb.co/rxzkRTD/146201680-e1b73b36-aa1e-4c2e-8a3a-974c2e06fa9d.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 104, 246),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Image.network(backgroundImgUrl),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Text(
                      "친구 추천할 때마다\n 10,000원 할인쿠폰 지급!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 60),
                        maximumSize: Size(150, 60),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("자세히보기",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          Icon(
                            CupertinoIcons.chevron_right,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.gift_fill,
                        color: Color.fromARGB(255, 53, 104, 246),
                        size: 20,
                      ),
                      label: Text(
                        '친구 추천하기',
                        style: TextStyle(
                          color: Color.fromARGB(255, 53, 104, 246),
                          height: 1.4,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          //모서리를 둥글게
                          borderRadius: BorderRadius.circular(50),
                        ),
                        primary: Colors.white,
                        padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
