import 'package:flutter/material.dart';
import '_3_1writing.dart';
import '_4_1recommend.dart';
import '_6_1my_page.dart';
import '_2home.dart';
// import '_5_2settings.dart';

class Settings1 extends StatefulWidget {
  const Settings1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Settings1State createState() => Settings1State();
  //NextScreenState createState() => NextScreenState();
}

class Settings1State extends State<Settings1> {
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
              child: Stack(children: [
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
                // /*------------------아이디------------------*/

                // Positioned(
                //   left: 31,
                //   top: 139,
                //   child: Container(
                //     width: 334,
                //     height: 290,
                //     decoration: ShapeDecoration(
                //       color: const Color(0xC9FFF0EF),
                //       shape: RoundedRectangleBorder(
                //         side: const BorderSide(width: 0.15, color: Color(0xCC545454)),
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //       shadows: const [
                //         BoxShadow(
                //           color: Color(0x19000000),
                //           blurRadius: 25,
                //           offset: Offset(-4, 9),
                //           spreadRadius: -6,
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                // Positioned(
                //   left: 97,
                //   top: 73,
                //   child: Container(
                //     width: 204,
                //     height: 34,
                //     decoration: const BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(
                //           color: Color(0x19000000),
                //           blurRadius: 25,
                //           offset: Offset(-4, 9),
                //           spreadRadius: -6,
                //         )
                //       ],
                //     ),
                //     child: Row(
                //       mainAxisSize: MainAxisSize.min,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       children: [
                //         Container(
                //           width: 204,
                //           height: 34,
                //           decoration: ShapeDecoration(
                //             color: const Color(0xC9FFF0EF),
                //             shape: RoundedRectangleBorder(
                //               side: const BorderSide(
                //                   width: 0.15, color: Color(0xCC545454)),
                //               borderRadius: BorderRadius.circular(50),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // const Positioned(
                //   left: 175,
                //   top: 81,
                //   child: Text(
                //     '설정',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(
                //       color: Color(0xFF545454),
                //       fontSize: 24,
                //       fontFamily: 'Gmarket Sans TTF',
                //       fontWeight: FontWeight.w500,
                //       height: 0.83,
                //       letterSpacing: -0.50,
                //     ),
                //   ),
                // ),
                // const Positioned(
                //   left: 13,
                //   top: 380,
                //   child: SizedBox(
                //     width: 160,
                //     height: 46,
                //     child: Text(
                //       '자주 묻는 질문',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         color: Color(0xFF545454),
                //         fontSize: 16,
                //         fontFamily: 'Gmarket Sans TTF',
                //         fontWeight: FontWeight.w500,
                //         height: 1.25,
                //         letterSpacing: -0.50,
                //       ),
                //     ),
                //   ),
                // ),
                // const Positioned(
                //   left: 45,
                //   top: 321,
                //   child: Text(
                //     '보안',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(
                //       color: Color(0xFF545454),
                //       fontSize: 16,
                //       fontFamily: 'Gmarket Sans TTF',
                //       fontWeight: FontWeight.w500,
                //       height: 1.25,
                //       letterSpacing: -0.50,
                //     ),
                //   ),
                // ),
                // /*알림 설정 */
                // const Positioned(
                //   left: 31,
                //   top: 262,
                //   child: SizedBox(
                //     width: 89,
                //     height: 37,
                //     child: Text(
                //       '알림 설정',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         color: Color(0xFF545454),
                //         fontSize: 16,
                //         fontFamily: 'Gmarket Sans TTF',
                //         fontWeight: FontWeight.w500,
                //         height: 1.25,
                //         letterSpacing: -0.50,
                //       ),
                //     ),
                //   ),
                // ),
                // const Positioned(
                //   left: 45,
                //   top: 207,
                //   child: Text(
                //     '다크 모드',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(
                //       color: Color(0xFF545454),
                //       fontSize: 16,
                //       fontFamily: 'Gmarket Sans TTF',
                //       fontWeight: FontWeight.w500,
                //       height: 1.25,
                //       letterSpacing: -0.50,
                //     ),
                //   ),
                // ),
                // const Positioned(
                //   left: 45,
                //   top: 165,
                //   child: Text(
                //     '언어 설정',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(
                //       color: Color(0xFF545454),
                //       fontSize: 16,
                //       fontFamily: 'Gmarket Sans TTF',
                //       fontWeight: FontWeight.w500,
                //       height: 1.25,
                //       letterSpacing: -0.50,
                //     ),
                //   ),
                // ),
                // Positioned(
                //   left: 330,
                //   top: 155,
                //   width: 27,
                //   height: 27,
                //   child: TextButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const Settings2(
                //                     title: 'hello',
                //                   )));
                //     }, // 클릭 시

                //     style: OutlinedButton.styleFrom(
                //       foregroundColor: const Color(0xFF545454), // 글자, 애니메이션 색상
                //       backgroundColor: const Color(0xFFFFFFEA), // 배경 색상
                //       textStyle: const TextStyle(
                //           fontFamily: 'Gmarket Sans TTF', // 폰트
                //           fontWeight: FontWeight.w700, // 폰트 굵기
                //           fontSize: 18 // 폰트 크기
                //           ),
                //       padding: const EdgeInsets.fromLTRB(1, 0, 1, 5),
                //       side: const BorderSide(
                //         // 테두리
                //         color: Color(0xCCFFFFEA),
                //         width: 1,
                //       ),

                //       shape: RoundedRectangleBorder(
                //         // 라운드
                //         borderRadius: BorderRadius.circular(50),
                //       ),
                //       elevation: 3, // 그림자
                //     ),
                //     child: const Text(">"),
                //   ),
                // ),
                // Positioned(
                //   left: 330,
                //   top: 200,
                //   width: 27,
                //   height: 27,
                //   child: TextButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     }, // 클릭 시

                //     style: OutlinedButton.styleFrom(
                //       foregroundColor: const Color(0xFF545454), // 글자, 애니메이션 색상
                //       backgroundColor: const Color(0xFFFFFFEA), // 배경 색상
                //       textStyle: const TextStyle(
                //           fontFamily: 'Gmarket Sans TTF', // 폰트
                //           fontWeight: FontWeight.w700, // 폰트 굵기
                //           fontSize: 18 // 폰트 크기
                //           ),
                //       padding: const EdgeInsets.fromLTRB(1, 0, 1, 5),
                //       side: const BorderSide(
                //         // 테두리
                //         color: Color(0xCCFFFFEA),
                //         width: 1,
                //       ),

                //       shape: RoundedRectangleBorder(
                //         // 라운드
                //         borderRadius: BorderRadius.circular(50),
                //       ),
                //       elevation: 3, // 그림자
                //     ),
                //     child: const Text(">"),
                //   ),
                // ),
                // Positioned(
                //   left: 330,
                //   top: 250,
                //   width: 27,
                //   height: 27,
                //   child: TextButton(
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const NextScreen1(
                //                     title: 'hello',
                //                   )));
                //     }, // 클릭 시

                //     style: OutlinedButton.styleFrom(
                //       foregroundColor: const Color(0xFF545454), // 글자, 애니메이션 색상
                //       backgroundColor: const Color(0xFFFFFFEA), // 배경 색상
                //       textStyle: const TextStyle(
                //           fontFamily: 'Gmarket Sans TTF', // 폰트
                //           fontWeight: FontWeight.w700, // 폰트 굵기
                //           fontSize: 18 // 폰트 크기
                //           ),
                //       padding: const EdgeInsets.fromLTRB(1, 0, 1, 5),
                //       side: const BorderSide(
                //         // 테두리
                //         color: Color(0xCCFFFFEA),
                //         width: 1,
                //       ),

                //       shape: RoundedRectangleBorder(
                //         // 라운드
                //         borderRadius: BorderRadius.circular(50),
                //       ),
                //       elevation: 3, // 그림자
                //     ),
                //     child: const Text(">"),
                //   ),
                // ),
                // Positioned(
                //   left: 330,
                //   top: 300,
                //   width: 27,
                //   height: 27,
                //   child: TextButton(
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const NextScreen2(
                //                     title: 'hello',
                //                   )));
                //     }, // 클릭 시

                //     style: OutlinedButton.styleFrom(
                //       foregroundColor: const Color(0xFF545454), // 글자, 애니메이션 색상
                //       backgroundColor: const Color(0xFFFFFFEA), // 배경 색상
                //       textStyle: const TextStyle(
                //           fontFamily: 'Gmarket Sans TTF', // 폰트
                //           fontWeight: FontWeight.w700, // 폰트 굵기
                //           fontSize: 18 // 폰트 크기
                //           ),
                //       padding: const EdgeInsets.fromLTRB(1, 0, 1, 5),
                //       side: const BorderSide(
                //         // 테두리
                //         color: Color(0xCCFFFFEA),
                //         width: 1,
                //       ),

                //       shape: RoundedRectangleBorder(
                //         // 라운드
                //         borderRadius: BorderRadius.circular(50),
                //       ),
                //       elevation: 3, // 그림자
                //     ),
                //     child: const Text(">"),
                //   ),
                // ),
                // Positioned(
                //   left: 330,
                //   top: 365,
                //   width: 27,
                //   height: 27,
                //   child: TextButton(
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const NextScreen1(
                //                     title: 'hello',
                //                   )));
                //     }, // 클릭 시

                //     style: OutlinedButton.styleFrom(
                //       foregroundColor: const Color(0xFF545454), // 글자, 애니메이션 색상
                //       backgroundColor: const Color(0xFFFFFFEA), // 배경 색상
                //       textStyle: const TextStyle(
                //           fontFamily: 'Gmarket Sans TTF', // 폰트
                //           fontWeight: FontWeight.w700, // 폰트 굵기
                //           fontSize: 18 // 폰트 크기
                //           ),
                //       padding: const EdgeInsets.fromLTRB(1, 0, 1, 5),
                //       side: const BorderSide(
                //         // 테두리
                //         color: Color(0xCCFFFFEA),
                //         width: 1,
                //       ),

                //       shape: RoundedRectangleBorder(
                //         // 라운드
                //         borderRadius: BorderRadius.circular(50),
                //       ),
                //       elevation: 3, // 그림자
                //     ),
                //     child: const Text(">"),
                //   ),
                // ),

                // /*------------------비밀번호------------------*/
                // Positioned(
                //   left: 97,
                //   top: 73,
                //   child: Container(
                //     width: 204,
                //     height: 34,
                //     decoration: const BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(
                //           color: Color(0x19000000),
                //           blurRadius: 25,
                //           offset: Offset(-4, 9),
                //           spreadRadius: -6,
                //         )
                //       ],
                //     ),
                //   ),
                // ),
              ])),
        ]),
      ),
    );
  }
}
