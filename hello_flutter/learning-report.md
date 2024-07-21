러닝 리포트
---
created_at : 2024-07-21(sun)
created_by : migdracios
---
# 개요 
## 학습 기술 
- flutter 
- dart

## 학습 내용 
- flutter 환경 구축하기 
- flutter 프로젝트 생성하기 

## 목차 

---

# 학습 기록 
## 1. flutter 프로젝트 생성하기
### 파일 폴더 구조 
- 주로 보게 되는 파일은 main.dart / pubspec.yaml 두 개.
- android/ios/test/web 등의 폴더는 알아서 만들어주는 것. 따로 건드리지 않는다.
- lib>main.dart에서 lib 폴더는 주로 코딩하는 폴더.
- pubspec.yaml은 라이브러리 및 설정과 관련된 파일.
### 코드 시작 세팅
- analysis_options.yaml에서 rules 밑에 아래와 같은 코드를 추가하여 코드 warning 강조표시를 끌 수 있음.
```yaml
# This file configures the analyzer, which statically analyzes Dart code to
# check for errors, warnings, and lints.
#
# The issues identified by the analyzer are surfaced in the UI of Dart-enabled
# IDEs (https://dart.dev/tools#ides-and-editors). The analyzer can also be
# invoked from the command line by running `flutter analyze`.

# The following line activates a set of recommended lints for Flutter apps,
# packages, and plugins designed to encourage good coding practices.
include: package:flutter_lints/flutter.yaml

linter:
  # The lint rules applied to this project can be customized in the
  # section below to disable rules from the `package:flutter_lints/flutter.yaml`
  # included above or to enable additional rules. A list of all available lints
  # and their documentation is published at https://dart.dev/lints.
  #
  # Instead of disabling a lint rule for the entire project in the
  # section below, it can also be suppressed for a single line of code
  # or a specific dart file by using the `// ignore: name_of_lint` and
  # `// ignore_for_file: name_of_lint` syntax on the line or in the file
  # producing the lint.
  rules:
    prefer_const_constructors: false
    prefer_const_literals_to_create_immutables: false
    # avoid_print: false  # Uncomment to disable the `avoid_print` rule
    # prefer_single_quotes: true  # Uncomment to enable the `prefer_single_quotes` rule

# Additional information about this file can be found at
# https://dart.dev/guides/language/analysis-options

```
### 에뮬레이터 세팅 및 앱 시동하기
- VS Code 우측 하단 기기 목록에서 에뮬레이팅 기기를 설정할 수 있음.
- 기기 목록은 MacBook이면 iOS 시뮬레이터를 지원하며, 안드로이드는 안드로이드 스튜디오 세팅에서 추가할 수 있음.
- Ctrl + Shift + P 로 명령 팔레트를 열어 Flutter: launch Emulator를 클릭하여 앱 런치가 가능.

## 2. 간단한 앱 화면 만들기
### Scaffold
- Scaffold는 앱 화면 위에 다른 위젯들을 올려놓을 수 있는 일종의 비계 장치 역할을 수행한다.
- 전체 코드 중에서 







