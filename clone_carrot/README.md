# clone_carrot

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## learning-report
### 앱 디자인 세팅
- 피드는 총 3단계로 볼 수 있음
- 1단계는 row로 이미지와 텍스트 부분으로 나뉨
- 2단계는 column으로 텍스트 부분에서 총 네 가지의 텍스트로 구분됨
- 3단계는 row로 좋아요를 오른쪽으로 밀어넣을 빈 공간과 아이콘이 있음
### feed 화면 구현
- 먼저 AppBar를 구현
- 피드를 만들기 위한 위젯을 붙여넣음
- text overflow를 막기 위해 Expanded 위젯 사용
- floating action button 구현
- bottom navigation bar 구현
### 위젯 별 파일 분리
- 위젯 묶음 별로 코드를 분리하여 파일로 분류하기
- 파일로 분류하기 위해 Extract Widget을 사용
- 이 위젯을 파일로 떼어다 분리
- 파일에 오류가 생길 경우, refactor를 사용해 라이브러리 import
### listview builder 세팅하기
- 하나의 위젯을 계속해서 만드는 listview builder 적용하기
- itemCount가 없다면 무한으로 생성
- 생성된 listview의 padding을 넣기
### 데이터를 넣은 listview를 적용하기
- homepage 실행 파일에서 데이터 불러오기
- Feed 위젯 클래스에서 imageUrl 변수로 선언하고 인자로 받기
- 인자로 받을 데이터를 listview builder에 index 값을 넣어 호출
- 호출한 값을 Feed() 생성자에 인자로 삽입
