import 'package:flutter/material.dart';
import '_3_3writing_post.dart';
import '_2home.dart';
import '_3_1writing.dart';
import '_4_1recommend.dart';
import '_5_1settings.dart';
import '_6_1my_page.dart';

class Writing2 extends StatefulWidget {
  const Writing2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Writing2State createState() => Writing2State();
}

class Writing2State extends State<Writing2> {
  String _buttonState = 'OFF';
  var _color1 = const Color(0xFFFFFFEA),
      _color2 = const Color(0xFFFFFFEA),
      _color3 = const Color(0xFFFFFFEA),
      _color4 = const Color(0xFFFFFFEA),
      _color5 = const Color(0xFFFFFFEA),
      _color6 = const Color(0xFFFFFFEA),
      _color7 = const Color(0xFFFFFFEA),
      _color8 = const Color(0xFFFFFFEA),
      _color9 = const Color(0xFFFFFFEA),
      _color10 = const Color(0xFFFFFFEA),
      _color11 = const Color(0xFFFFFFEA),
      _color12 = const Color(0xFFFFFFEA),
      _color13 = const Color(0xFFFFFFEA),
      _color14 = const Color(0xFFFFFFEA),
      _color15 = const Color(0xFFFFFFEA),
      _color16 = const Color(0xFFFFFFEA),
      _color17 = const Color(0xFFFFFFEA),
      _color18 = const Color(0xFFFFFFEA),
      _color19 = const Color(0xFFFFFFEA),
      _color20 = const Color(0xFFFFFFEA),
      _color21 = const Color(0xFFFFFFEA);

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
                              builder: (_) => const Writing3(
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

                /*------------------해시태그-----------------*/
                Positioned(
                  left: 40,
                  top: 120,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /*------------------#분위기------------------*/
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Positioned(
                              left: 0,
                              top: 0,
                              child: SizedBox(
                                width: 73,
                                height: 29,
                                child: Text(
                                  '#분위기 ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF545454),
                                    fontSize: 20,
                                    fontFamily: 'Gmarket Sans TTF',
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: -0.50,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 311,
                              height: 93,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 311,
                                      height: 93,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xC9D2E89A),
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.15,
                                              color: Color(0xCC545454)),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 조용한
                                    left: 10,
                                    top: 14,
                                    child: SizedBox(
                                      width: 66,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor1, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color1, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#조용한"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 힙한
                                    left: 83,
                                    top: 14,
                                    child: SizedBox(
                                      width: 66,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor2, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color2, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#힙한"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // E들의
                                    left: 156,
                                    top: 14,
                                    child: SizedBox(
                                      width: 66,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor3, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color3, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#E들의"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 시끄러운
                                    left: 229,
                                    top: 14,
                                    child: SizedBox(
                                      width: 77,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor4, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color4, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#시끄러운"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 화려한
                                    left: 10,
                                    top: 52,
                                    child: SizedBox(
                                      width: 66,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor5, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color5, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#화려한"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 편안한
                                    left: 83,
                                    top: 52,
                                    child: SizedBox(
                                      width: 66,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor6, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color6, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#편안한"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // I들의
                                    left: 160,
                                    top: 52,
                                    child: SizedBox(
                                      width: 66,
                                      height: 23,
                                      child: TextButton(
                                        onPressed: changeColor7, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color7, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#I들의"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 귀여운
                                    left: 230,
                                    top: 52,
                                    child: SizedBox(
                                      width: 66,
                                      height: 23,
                                      child: TextButton(
                                        onPressed: changeColor8, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color8, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#귀여운"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),

                        /*------------------#음식------------------*/
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 40)),
                            const Positioned(
                              left: 0,
                              top: 0,
                              child: SizedBox(
                                width: 59,
                                height: 29,
                                child: Text(
                                  '#음식 ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF545454),
                                    fontSize: 20,
                                    fontFamily: 'Gmarket Sans TTF',
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: -0.50,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 311,
                              height: 65,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 311,
                                      height: 55,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xC9D2E89A),
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 0.15,
                                              color: Color(0xCC545454)),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 한식
                                    left: 10,
                                    top: 14,
                                    child: SizedBox(
                                      width: 66,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor9, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color9, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#한식"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 양식
                                    left: 83,
                                    top: 14,
                                    child: SizedBox(
                                      width: 66,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor10, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color10, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#양식"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 중식
                                    left: 156,
                                    top: 14,
                                    child: SizedBox(
                                      width: 66,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor11, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color11, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#중식"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 일식
                                    left: 229,
                                    top: 14,
                                    child: SizedBox(
                                      width: 66,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor12, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color12, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#일식"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),

                        /*------------------#추천이유------------------*/
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 40)),
                            const Positioned(
                              left: 0,
                              top: 0,
                              child: SizedBox(
                                width: 105,
                                height: 29,
                                child: Text(
                                  '#추천이유 ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF545454),
                                    fontSize: 20,
                                    fontFamily: 'Gmarket Sans TTF',
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: -0.50,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
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
                                              width: 0.15,
                                              color: Color(0xCC545454)),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 사진찍기좋은
                                    left: 10,
                                    top: 14,
                                    child: SizedBox(
                                      width: 98,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor13, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color13, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#사진찍기좋은"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 단체모임
                                    left: 115,
                                    top: 14,
                                    child: SizedBox(
                                      width: 80,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor14, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color14, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#단체모임"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 혼밥하기좋은
                                    left: 201,
                                    top: 14,
                                    child: SizedBox(
                                      width: 96,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor15, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color15, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#혼밥하기좋은"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 넓은
                                    left: 10,
                                    top: 52,
                                    child: SizedBox(
                                      width: 57,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor16, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color16, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#넓은"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 요즘뜨는
                                    left: 76,
                                    top: 52,
                                    child: SizedBox(
                                      width: 75,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor17, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color17, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#요즘뜨는"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 뷰맛집
                                    left: 159,
                                    top: 52,
                                    child: SizedBox(
                                      width: 65,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor18, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color18, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#뷰맛집"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 먹방
                                    left: 230,
                                    top: 52,
                                    child: SizedBox(
                                      width: 55,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor19, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color19, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#먹방"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 데이트하기좋은
                                    left: 10,
                                    top: 90,
                                    child: SizedBox(
                                      width: 115,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor20, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color20, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#데이트하기좋은"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // 재밌는
                                    left: 130,
                                    top: 90,
                                    child: SizedBox(
                                      width: 65,
                                      height: 23,
                                      child: ElevatedButton(
                                        onPressed: changeColor21, // 클릭 시
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: const Color(
                                              0xFF545454), // 글자, 애니메이션 색상
                                          backgroundColor: _color21, // 배경 색상
                                          textStyle: const TextStyle(
                                              fontFamily:
                                                  'Gmarket Sans TTF', // 폰트
                                              fontWeight:
                                                  FontWeight.w700, // 폰트 굵기
                                              fontSize: 13 // 폰트 크기
                                              ),
                                          padding: const EdgeInsets.all(1),
                                          side: const BorderSide(
                                            // 테두리
                                            color: Color(0xCC545454),
                                            width: 0.5,
                                          ),

                                          shape: RoundedRectangleBorder(
                                            // 라운드
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          elevation: 3, // 그림자
                                        ),
                                        child: const Text("#재밌는"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ]),
                ),
              ],
            ))
      ])),
    );
  }

  void changeColor1() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color1 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color1 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor2() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color2 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color2 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor3() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color3 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color3 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor4() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color4 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color4 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor5() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color5 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color5 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor6() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color6 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color6 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor7() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color7 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color7 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor8() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color8 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color8 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor9() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color9 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color9 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor10() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color10 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color10 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor11() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color11 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color11 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor12() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color12 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color12 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor13() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color13 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color13 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor14() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color14 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color14 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor15() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color15 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color15 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor16() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color16 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color16 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor17() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color17 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color17 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor18() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color18 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color18 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor19() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color19 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color19 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor20() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color20 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color20 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }

  void changeColor21() {
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        _color21 = const Color(0xFFFFFFEA);
      } else {
        _buttonState = 'OFF';
        _color21 = const Color.fromARGB(255, 255, 255, 178);
      }
    });
  }
}
