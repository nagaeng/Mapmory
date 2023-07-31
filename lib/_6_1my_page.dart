import 'package:flutter/material.dart';
import '_2home.dart';
import '_3_1writing.dart';
import '_5_1settings.dart';
import '_4_1recommend.dart';

class MyPage1 extends StatefulWidget {
  const MyPage1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  MyPage1State createState() => MyPage1State();
}

class MyPage1State extends State<MyPage1> {
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

                /*------------------마이페이지텍스트------------------*/

                Positioned(
                  left: 97,
                  top: 73,
                  child: SizedBox(
                    width: 204,
                    height: 34,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 204,
                            height: 34,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 25,
                                  offset: Offset(-4, 9),
                                  spreadRadius: -6,
                                )
                              ],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 204,
                                    height: 34,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xC9FFF0EF),
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.15,
                                            color: Color(0xCC545454)),
                                        borderRadius: BorderRadius.circular(50),
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
                          top: 8,
                          child: Text(
                            '마이페이지',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF545454),
                              fontSize: 24,
                              fontFamily: 'Gmarket Sans TTF',
                              fontWeight: FontWeight.w500,
                              height: 0.83,
                              letterSpacing: -0.50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 7,
                  top: 126,
                  child: SizedBox(
                    width: 372,
                    height: 242,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 23,
                          top: 0,
                          child: Container(
                            width: 334,
                            height: 242,
                            decoration: ShapeDecoration(
                              color: const Color(0xC9FFF0EF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.15, color: Color(0xCC545454)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 25,
                                  offset: Offset(-4, 9),
                                  spreadRadius: -6,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 32.34,
                          top: 9.57,
                          child: Container(
                            width: 84.66,
                            height: 80.23,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFECECEC),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 122,
                          top: 16,
                          child: SizedBox(
                            width: 65,
                            height: 17,
                            child: Text(
                              '김멍멍',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 16,
                                fontFamily: 'Gmarket Sans TTF',
                                fontWeight: FontWeight.w500,
                                height: 1.25,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          top: 119,
                          child: SizedBox(
                            width: 158,
                            height: 34,
                            child: Text(
                              '나이 : 25세',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 16,
                                fontFamily: 'Gmarket Sans TTF',
                                fontWeight: FontWeight.w500,
                                height: 1.25,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          top: 119,
                          child: SizedBox(
                            width: 158,
                            height: 27,
                            child: Text(
                              '나이 : 25세',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 16,
                                fontFamily: 'Gmarket Sans TTF',
                                fontWeight: FontWeight.w500,
                                height: 1.25,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 11,
                          top: 160,
                          child: SizedBox(
                            width: 263,
                            height: 27,
                            child: Text(
                              '여행 스타일: #익스트림, #바다',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 16,
                                fontFamily: 'Gmarket Sans TTF',
                                fontWeight: FontWeight.w500,
                                height: 1.25,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 29,
                          top: 200,
                          child: SizedBox(
                            width: 323,
                            height: 27,
                            child: Text(
                              '자주 사용하는 키워드: #재밌는, #먹방, #수영',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF545454),
                                fontSize: 16,
                                fontFamily: 'Gmarket Sans TTF',
                                fontWeight: FontWeight.w500,
                                height: 1.25,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 9,
                          top: 95,
                          child: SizedBox(width: 363, height: 13),
                        ),
                        Positioned(
                          left: 119,
                          top: 71,
                          child: Container(
                            width: 127,
                            height: 23,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0F000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 3,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 127,
                                    height: 23,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFFFFFEA),
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.15,
                                            color: Color(0xCC545454)),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 98,
                          top: 73,
                          width: 165,
                          height: 17,
                          child: Text(
                            ' > 내 정보 수정하기',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF545454),
                              fontSize: 13,
                              fontFamily: 'Gmarket Sans TTF',
                              fontWeight: FontWeight.w500,
                              height: 1.54,
                              letterSpacing: -0.50,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 39,
                          top: 17,
                          child: Container(
                            width: 69,
                            height: 66,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/69x66"), //프로필이미지
                                fit: BoxFit.fill,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 387,
                  child: Container(
                    width: 334,
                    height: 240,
                    decoration: ShapeDecoration(
                      color: const Color(0xC9FFF0EF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.15, color: Color(0xCC545454)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 25,
                          offset: Offset(-4, 9),
                          spreadRadius: -6,
                        )
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  left: 47,
                  top: 517,
                  child: Text(
                    '본문',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Positioned(
                  left: 23,
                  top: 411,
                  child: SizedBox(
                    width: 158,
                    height: 27,
                    child: Text(
                      '내가 작성한 글',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF545454),
                        fontSize: 16,
                        fontFamily: 'Gmarket Sans TTF',
                        fontWeight: FontWeight.w500,
                        height: 1.25,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 41,
                  top: 492,
                  child: Container(
                    width: 311,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFCDC4C4),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 39,
                  top: 539,
                  child: Container(
                    width: 311,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFCDC4C4),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 39,
                  top: 583,
                  child: Container(
                    width: 311,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFCDC4C4),
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 43,
                  top: 458,
                  child: Text(
                    '제목',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Positioned(
                  left: 46,
                  top: 475,
                  child: Text(
                    '본문',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Positioned(
                  left: 48,
                  top: 558,
                  child: Text(
                    '본문',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Positioned(
                  left: 43,
                  top: 502,
                  child: Text(
                    '제목',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Positioned(
                  left: 45,
                  top: 541,
                  child: Text(
                    '제목',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Positioned(
                  left: 225,
                  top: 592,
                  child: Container(
                    width: 21,
                    height: 21,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(children: [
                      //화살표
                    ]),
                  ),
                ),
              ],
            ))
      ])),
    );
  }
}
