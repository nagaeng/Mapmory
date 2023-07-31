import 'package:flutter/material.dart';
import '_2home.dart';
import '_0membership.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  MyLoginState createState() => MyLoginState();
}

class MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Column(
        children: [
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
                /*------------------로그인------------------*/
                Positioned(
                  left: 160,
                  top: 535,
                  width: 59.59,
                  height: 25,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const HomeScreen(
                                    title: 'Next',
                                  )));
                    }, // 클릭 시

                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF545454), // 글자, 애니메이션 색상
                      backgroundColor: const Color(0xFFFFFFEA), // 배경 색상
                      textStyle: const TextStyle(
                          fontFamily: 'Gmarket Sans TTF', // 폰트
                          fontWeight: FontWeight.w700, // 폰트 굵기
                          fontSize: 14 // 폰트 크기
                          ),
                      padding: const EdgeInsets.all(1),
                      side: const BorderSide(
                        // 테두리
                        color: Color(0xCC545454),
                        width: 0.5,
                      ),

                      shape: RoundedRectangleBorder(
                        // 라운드
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 3, // 그림자
                    ),
                    child: const Text("로그인"),
                  ),
                ),

                /*------------------아이디------------------*/
                Positioned(
                  left: 60.66,
                  top: 426,
                  child: Container(
                    //그림자 넣기 위해선 Container 필요, 위치 설정을 위해선 Positioned 필요, child: TextField를 무조건 넣어야함 씨부레. 3개 동시에 적용 어케함?
                    width: 277.34,
                    height: 32,

                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0F000000),
                          blurRadius: 50,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 50,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: '아이디',
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 0.5),
                          hintStyle: const TextStyle(
                            fontSize: 15,
                            color: Color(0xCC545454),
                            fontWeight: FontWeight.w500,
                          ),
                          filled: true,
                          fillColor: const Color(0xFFFFFFEA),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                color: Color(0xCC545454),
                                width: 0.5,
                              ))),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),

                /*------------------비밀번호------------------*/
                Positioned(
                  left: 60.66,
                  top: 479,
                  child: Container(
                    width: 277.34,
                    height: 32,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0F000000),
                          blurRadius: 50,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 50,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '비밀번호',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 0.5),
                        hintStyle: const TextStyle(
                          fontSize: 15,
                          color: Color(0xCC545454),
                          fontWeight: FontWeight.w500,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFFFEA),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            color: Color(0xCC545454),
                            width: 0.5,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ),
                ),
                /*------------------회원가입------------------*/
                Positioned(
                  left: 130,
                  top: 560,
                  width: 123,
                  height: 35,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const Membership(
                                    title: 'Next',
                                  )));
                    }, // 클릭 시

                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(
                          255, 156, 156, 156), // 글자, 애니메이션 색상
                      // backgroundColor: const Color(0xFFFFFFEA), // 배경 색상
                      textStyle: const TextStyle(
                          fontFamily: 'Gmarket Sans TTF', // 폰트
                          fontWeight: FontWeight.w600, // 폰트 굵기
                          fontSize: 14 // 폰트 크기
                          ),
                      // padding: const EdgeInsets.all(1),
                      side: BorderSide.none,
                    ),
                    child: const Text("회원가입"),
                  ),
                ),
                /*------------------이미지 삽입------------------*/
                Positioned(
                  // 토순이
                  left: 50,
                  top: 130,
                  child: Container(
                    width: 150,
                    height: 158,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/tosun.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  //맵모리 텍스트
                  left: 240,
                  top: 180,
                  child: Container(
                    width: 86,
                    height: 28,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/mapmoryTXT.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
