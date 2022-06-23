import 'package:flutter/material.dart';

class Mypage extends StatelessWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map> _menu = [
      {'title': '주소 관리', 'icon': Icons.house},
      {'title': '결제 수단 관리', 'icon': Icons.credit_card},
      {'title': '공지사항', 'icon': Icons.campaign},
      {'title': '문의사항', 'icon': Icons.help},
    ];
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '나의 정보',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '010-1111-2222',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 36,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _menu.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {},
                  leading: Icon(_menu[index]['icon'], color: Colors.black),
                  title: Text(_menu[index]['title']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
