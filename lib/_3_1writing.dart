import 'package:flutter/material.dart';
import '_3_2writing_hashtag.dart';
import '_4_1recommend.dart';
import '_5_1settings.dart';
import '_6_1my_page.dart';
import '_2home.dart';

class Writing1 extends StatefulWidget {
  const Writing1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Writing1State createState() => Writing1State();
}

class Writing1State extends State<Writing1> {
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
                /*------------------취소버튼------------------*/
                Positioned(
                  left: 23,
                  top: 69,
                  width: 62,
                  height: 26,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    }, // 클릭 시

                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF545454), // 글자, 애니메이션 색상
                      backgroundColor: const Color(0xFFFFFFEA), // 배경 색상
                      textStyle: const TextStyle(
                          fontFamily: 'Gmarket Sans TTF', // 폰트
                          fontWeight: FontWeight.w700, // 폰트 굵기
                          fontSize: 18 // 폰트 크기
                          ),
                      padding: const EdgeInsets.fromLTRB(1, 0, 1, 5),
                      side: const BorderSide(
                        // 테두리
                        color: Color(0xFFFFFFEA),
                        width: 1,
                      ),

                      shape: RoundedRectangleBorder(
                        // 라운드
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 3, // 그림자
                    ),
                    child: const Text("취소"),
                  ),
                ),

                /*------------------등록버튼------------------*/
                Positioned(
                  left: 310,
                  top: 69,
                  width: 62,
                  height: 26,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const Writing2(
                                    title: 'Next',
                                  )));
                    }, // 클릭 시

                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF545454), // 글자, 애니메이션 색상
                      backgroundColor: const Color(0xFFFFFFEA), // 배경 색상
                      textStyle: const TextStyle(
                          fontFamily: 'Gmarket Sans TTF', // 폰트
                          fontWeight: FontWeight.w700, // 폰트 굵기
                          fontSize: 16 // 폰트 크기
                          ),
                      padding: const EdgeInsets.fromLTRB(1, 0, 1, 5),
                      side: const BorderSide(
                        // 테두리
                        color: Color(0xFFFFFFEA),
                        width: 1,
                      ),

                      shape: RoundedRectangleBorder(
                        // 라운드
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 3, // 그림자
                    ),
                    child: const Text("등록"),
                  ),
                ),

                /*------------------제목입력------------------*/
                const Positioned(
                  left: 38,
                  top: 130,
                  child: SizedBox(
                    width: 294,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '제목',
                        hintStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                        enabledBorder: UnderlineInputBorder(),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),

                /*------------------본문입력------------------*/
                const Positioned(
                  left: 38,
                  top: 192,
                  child: SizedBox(
                    width: 294,
                    height: 325,
                    child: TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: '글쓰기',
                        hintStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                        enabledBorder: InputBorder.none,
                      ),
                      keyboardType: TextInputType.multiline,
                    ),
                  ),
                ),

                /*------------------앨범접근버튼------------------*/
                Positioned(
                  left: 292,
                  top: 588,
                  child: SizedBox(
                    width: 49,
                    height: 49,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 49,
                            height: 49,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFE7E7E7),
                              shape: OvalBorder(
                                side: BorderSide(
                                    width: 0.15, color: Color(0xCC545454)),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 0,
                            top: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(0.1),
                              child: Stack(children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.photo_camera,
                                    size: 30,
                                    color: Color(0xCC545454),
                                  ),
                                )
                              ]),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ))
      ])),
    );
  }
}
