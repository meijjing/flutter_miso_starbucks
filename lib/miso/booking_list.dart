import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingList extends StatelessWidget {
  const BookingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              '예약내역',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.info_circle_fill, color: Colors.blue),
                Text(
                  '예약된 서비스가 아직 없어요. 지금 예약해보세요!',
                  style: TextStyle(),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              height: 1,
            ),
            Spacer(),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(),
                child: Text('예약하기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
