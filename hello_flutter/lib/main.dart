import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 위젯을 올릴 수 있는 비계 Scaffold
      home: Scaffold(
        // 상단 바 위젯 AppBar
        appBar: AppBar(
          centerTitle: true, // AppBar 내 중앙 정렬 옵션
          title: // Hello Flutter 제목 부분
              Text(
            "Hello Flutter",
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ), // 폰트 스타일 지정
          ),
          // 배경색 속성
          backgroundColor: Colors.blue,
        ),
        // Column의 왼쪽 전구를 눌러 Wrap with Padding
        // EdgeInsets.all로 전 방위 여백을 주기
        // Padding을 Wrap with Widget
        // Widget으로 묶어 Scrollable 하게 만들기
        // body : widget을 SingleChildScrollView로 변경
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                // 이미지 입력 공간
                Padding(
                  padding: const EdgeInsets.all(32.0), // 이미지 여백 조정
                  child: Image.network(
                    "https://i.ibb.co/nngK6j3/startup.png",
                    width: 81, // 이미지 크기 조절
                  ),
                ),

                // 텍스트 부분에 왼쪽 전구를 눌러 Wrap with Column
                // Column의 []는 배열, 여러 개의 목록을 의미

                // 이메일 입력 부분
                TextField(
                  decoration: InputDecoration(
                    labelText: "이메일", // 데코레이션으로 입력 라벨 표시
                  ),
                ),

                // 비밀번호 입력 부분
                TextField(
                  obscureText: true, // 비밀번호 숨기는 옵션
                  decoration: InputDecoration(
                    labelText: "비밀번호", // 데코레이션으로 입력 라벨 표시
                  ),
                ),

                // 버튼 부분
                // 필수 표시 항목을 자동으로 가져옴
                // onPressed -> Func / child -> Widget

                // Container를 Wrap with Padding

                // ElevatedButton을 Wrap with Container
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "로그인",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
