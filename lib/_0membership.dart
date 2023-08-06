import 'package:flutter/material.dart';
import '_1login.dart';

class Membership extends StatefulWidget {
  const Membership({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  MembershipState createState() => MembershipState();
}

class MembershipState extends State<Membership> {
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
                /*------------------아이디------------------*/
                Positioned(
                  left: 130,
                  top: 180,
                  child: SizedBox(
                    width: 250,
                    height: 32,
                    child: TextField(
                      decoration: InputDecoration(
                        // hintText: '아이디',
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
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                const Positioned(
                  left: 55,
                  top: -115,
                  child: Text(
                    '아이디 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 20,
                      // fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w800,
                      height: 20,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),

                /*------------------비밀번호------------------*/
                Positioned(
                  left: 130,
                  top: 230,
                  child: SizedBox(
                    width: 250,
                    height: 32,
                    child: TextField(
                      decoration: InputDecoration(
                        // hintText: '비밀번호',
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
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                    ),
                  ),
                ),
                const Positioned(
                  left: 40,
                  top: -65,
                  child: Text(
                    '비밀번호 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 20,
                      // fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w800,
                      height: 20,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
                /*------------------비밀번호확인------------------*/
                Positioned(
                  left: 130,
                  top: 280,
                  child: SizedBox(
                    width: 250,
                    height: 32,
                    child: TextField(
                      decoration: InputDecoration(
                        // hintText: '비밀번호',
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
                const Positioned(
                  left: 5,
                  top: -15,
                  child: Text(
                    '비밀번호 확인 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 20,
                      // fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w800,
                      height: 20,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),

                /*------------------이메일------------------*/
                Positioned(
                  left: 130,
                  top: 330,
                  child: SizedBox(
                    width: 250,
                    height: 32,
                    child: TextField(
                      decoration: InputDecoration(
                        // hintText: '비밀번호',
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
                    ),
                  ),
                ),
                const Positioned(
                  left: 60,
                  top: 35,
                  child: Text(
                    '이메일',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 20,
                      // fontFamily: 'Gmarket Sans TTF',
                      fontWeight: FontWeight.w800,
                      height: 20,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
                Positioned(
                  left: 318,
                  top: 375,
                  width: 60,
                  height: 30,
                  child: TextButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const MyLogin(
                                    title: 'Next',
                                  )));
                    }, // 클릭 시

                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF545454), // 글자, 애니메이션 색상
                      backgroundColor: const Color(0xFFFFFFEA), // 배경 색상
                      textStyle: const TextStyle(
                          // fontFamily: 'Gmarket Sans TTF', // 폰트
                          fontWeight: FontWeight.w800, // 폰트 굵기
                          fontSize: 18 // 폰트 크기
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
                    ),
                    child: const Text("가입"),
                  ),
                ),
              ],
            ))
      ])),
    );
  }
}
