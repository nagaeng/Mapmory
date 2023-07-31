import 'package:flutter/material.dart';
import '_2home.dart';
import '_3_1writing.dart';
import '_4_1recommend.dart';
import '_5_1settings.dart';
import '_6_1my_page.dart';

class Writing3 extends StatefulWidget {
  const Writing3({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Writing3State createState() => Writing3State();
}

class Writing3State extends State<Writing3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          width: 393,
          height: 784,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.00, -1.00),
              end: const Alignment(0, 1),
              colors: [
                Colors.white.withOpacity(0.6899999976158142),
                const Color(0xAFF8F2F2),
                const Color(0xAFFFF0F0),
                const Color(0xC9FADFDE)
              ],
            ),
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                width: 0.50,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Stack(
            children: [
              /*------------------하단바------------------*/
              Positioned(
                left: 30,
                top: 699,
                child: Stack(
                  children: [
                    SizedBox(
                      width: 332,
                      height: 59,
                      child: Container(
                        width: 332,
                        height: 59,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 0.5),
                        decoration: ShapeDecoration(
                          color: const Color(0xAFFADFDE),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 0.15,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xCC545454),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 10,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.edit,
                                size: 40,
                                color: Color(0xCC545454),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Writing1(
                                              title: 'Next',
                                            )));
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.place,
                                size: 40,
                                color: Color(0xCC545454),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Recommend1(
                                              title: 'Next',
                                            )));
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.home,
                                size: 40,
                                color: Color(0xCC545454),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const HomeScreen(
                                              title: 'Next',
                                            )));
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.person,
                                size: 40,
                                color: Color(0xCC545454),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const MyPage1(
                                              title: 'Next',
                                            )));
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.settings,
                                size: 40,
                                color: Color(0xCC545454),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Settings1(
                                              title: 'Next',
                                            )));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              /*------------------게시완료!------------------*/
              Positioned(
                  left: 80,
                  top: 40,
                  child: SizedBox(
                    width: 350,
                    height: 350,
                    child: Stack(
                      children: [
                        Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 234.25,
                              height: 231.33,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFFFFDD1),
                                shape: OvalBorder(
                                  side: BorderSide(
                                      width: 0.15, color: Color(0xCC545454)),
                                ),
                              ),
                            )),
                        const Positioned(
                          left: 65,
                          top: 150,
                          child: SizedBox(
                            width: 110,
                            height: 30,
                            child: Text(
                              '게시 완료!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 24,
                                // fontFamily: 'Gmarket Sans TTF',
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 70,
                          top: 30,
                          child: IconButton(
                            icon: const Icon(
                              Icons.done,
                              size: 80,
                              color: Color(0xCC545454),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  )),
              /*------------------해시태그------------------*/
              const Positioned(
                left: 39,
                top: 221,
                child: Text(
                  '#조용한',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Gmarket Sans TTF',
                    fontWeight: FontWeight.w300,
                    height: 20,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              const Positioned(
                left: 39,
                top: 50,
                child: Text(
                  '#한식',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Gmarket Sans TTF',
                    fontWeight: FontWeight.w300,
                    height: 20,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 512,
                child: SizedBox(
                  width: 311,
                  height: 131,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 311,
                          height: 131,
                          decoration: ShapeDecoration(
                            color: const Color(0xC9D2E89A),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.15, color: Color(0xCC545454)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7.78,
                        top: 5.57,
                        child: Container(
                          width: 65.53,
                          height: 119.85,
                          decoration: ShapeDecoration(
                            color: const Color(0xDBFFFFEA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 161.05,
                        top: 5.57,
                        child: Container(
                          width: 65.53,
                          height: 119.85,
                          decoration: ShapeDecoration(
                            color: const Color(0xDBFFFFEA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 237.69,
                        top: 5.57,
                        child: Container(
                          width: 65.53,
                          height: 119.85,
                          decoration: ShapeDecoration(
                            color: const Color(0xDBFFFFEA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 84.41,
                        top: 5.57,
                        child: Container(
                          width: 65.53,
                          height: 119.85,
                          decoration: ShapeDecoration(
                            color: const Color(0xDBFFFFEA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 345,
                child: SizedBox(
                  width: 311,
                  height: 131,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 311,
                          height: 131,
                          decoration: ShapeDecoration(
                            color: const Color(0xC9D2E89A),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.15, color: Color(0xCC545454)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 7.78,
                        top: 5.57,
                        child: Container(
                          width: 65.53,
                          height: 119.85,
                          decoration: ShapeDecoration(
                            color: const Color(0xDBFFFFEA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 161.05,
                        top: 5.57,
                        child: Container(
                          width: 65.53,
                          height: 119.85,
                          decoration: ShapeDecoration(
                            color: const Color(0xDBFFFFEA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 237.69,
                        top: 5.57,
                        child: Container(
                          width: 65.53,
                          height: 119.85,
                          decoration: ShapeDecoration(
                            color: const Color(0xDBFFFFEA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 84.41,
                        top: 5.57,
                        child: Container(
                          width: 65.53,
                          height: 119.85,
                          decoration: ShapeDecoration(
                            color: const Color(0xDBFFFFEA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 44,
                top: 103,
                child: Text(
                  '*다음은 해시태그를 기반으로 회원님께 추천되는 게시물입니다.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFA5A5A5),
                    fontSize: 12,
                    fontFamily: 'Gmarket Sans TTF',
                    fontWeight: FontWeight.w300,
                    height: 20,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
            ],
          ),
        )
      ])),
    );
  }
}
