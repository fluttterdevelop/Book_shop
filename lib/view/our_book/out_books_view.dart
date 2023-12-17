import 'package:bookshop/constant/colors.dart';
import 'package:flutter/material.dart';

class OurBooksView extends StatefulWidget {
  const OurBooksView({super.key});

  @override
  State<OurBooksView> createState() => _OurBooksViewState();
}

class _OurBooksViewState extends State<OurBooksView> {
  List imageArr = [
    "assets/img/ob1.png",
    "assets/img/ob2.png",
    "assets/img/ob3.png"
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  "assets/img/our_books_top.png",
                  width: media.width,
                  fit: BoxFit.fitWidth,
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: media.width * 0.9,
                  alignment: Alignment.bottomLeft,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: imageArr.map((iName) {
                        var isFirst = imageArr.first == iName;
                        var isLast = imageArr.last == iName;
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: isFirst
                              ? const EdgeInsets.only(left: 15)
                              : (isLast
                                  ? const EdgeInsets.only(right: 15)
                                  : null),
                          child: Image.asset(
                            iName,
                            height: 120,
                            fit: BoxFit.fitHeight,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Text(
                """
“Kitob do‘koni” oddiy joy emas,
 balki ko‘ngil qo‘riqxonasidir. U joy 
 o'zining keng to'plami, jozibali muhiti,
  bilimdon xodimlari va qiziqarli tadbirlari bilan
   har qanday insonni lol qoldiradi. 
   Adabiy xazina izlayotgan va tashqi dunyodan dam olmoqchi
    bo‘lganlar uchun "Kitob Do‘koni" bamisoli kashf etilishini kutayotgan vohadir.
    Oxirigacha o'qiganingiz uchun rahmat !
            """,
                textAlign: TextAlign.center,
                style: TextStyle(color: TColor.subTitle, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
