import 'package:flutter/cupertino.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("Esentai Mall"),
        backgroundColor: CupertinoColors.systemFill.withOpacity(0.3),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/images/esentai_2.png',
              fit: BoxFit.fitWidth,
              width: double.maxFinite,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Описание",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF929292),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                      "Новый способ обжарки хачапури только у нас И вкуснейшие салатики малибу и ..."),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Подробнее",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF4631D2),
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: const Color(0xFFE0E6ED),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 19),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(CupertinoIcons.clock),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Работаем с 20:00 до 18:00",
                        style: TextStyle(fontSize: 16, fontFamily: 'Manrope'),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: const [
                      Icon(CupertinoIcons.placemark),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Аль-Фараби",
                        style: TextStyle(fontSize: 16, fontFamily: 'Manrope'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: const Color(0xFFE0E6ED),
            ),
          ],
        ),
      ),
    );
  }
}
