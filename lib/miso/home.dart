import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 53, 104, 246),
        padding: EdgeInsets.only(bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              '대한민국 1등 홈서비스\n 미소를 만나보세요!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.add,
                color: Color.fromARGB(255, 53, 104, 246),
              ),
              label: Text(
                "예약하기",
                style: TextStyle(
                  color: Color.fromARGB(255, 53, 104, 246),
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
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 137, 168, 255),
              ),
              child: Text("서비스 상세정보"),
            ),
          ],
        ),
      ),
    );
  }
}
