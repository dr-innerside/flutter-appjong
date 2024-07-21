import 'package:clone_carrot/feed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // 생성자

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://cdn2.thecatapi.com/images/6bt.jpg",
      "https://cdn2.thecatapi.com/images/ahr.jpg",
      "https://cdn2.thecatapi.com/images/arj.jpg",
      "https://cdn2.thecatapi.com/images/brt.jpg",
      "https://cdn2.thecatapi.com/images/cml.jpg",
      "https://cdn2.thecatapi.com/images/e35.jpg",
      "https://cdn2.thecatapi.com/images/MTk4MTAxOQ.jpg",
      "https://cdn2.thecatapi.com/images/MjA0ODM5MQ.jpg",
      "https://cdn2.thecatapi.com/images/AuY1uMdmi.jpg",
      "https://cdn2.thecatapi.com/images/AKUofzZW_.png",
    ];
    return Scaffold(
      // AppBar. 색과 엘리베이션 세팅(공중에 떠 있는 느낌)
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Row(
          children: [
            SizedBox(width: 16),
            Text(
              '중앙동',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.black,
            ),
          ],
        ),
        leadingWidth: 100,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell, color: Colors.black),
          ),
        ],
      ),
      // listview horizon padding : 리스트 뷰 전반의 좌우 여백
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: images.length, // 이미지 개수만큼 보여주기
          itemBuilder: (context, index) {
            final image = images[index]; // index에 해당하는 이미지
            // feed vertical padding : 피드 전반의 위아래 여백
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Feed(imageUrl: image),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 239, 97, 97),
        elevation: 1,
        child: Icon(
          Icons.add_rounded,
          size: 36,
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '홈',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            label: '동네생활',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fmd_good_outlined),
            label: '내 근처',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: '나의 당근',
          ),
        ],
        currentIndex: 0,
      ),
    );
  }
}
