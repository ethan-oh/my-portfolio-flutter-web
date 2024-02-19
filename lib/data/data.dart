import 'package:responsive_layout/model/more.dart';
import 'package:responsive_layout/model/project.dart';
import 'package:simple_icons/simple_icons.dart';

class MyData {
  static const String emailAddress = 'osm6227@gmail.com';

  // 프로필 데이터
  static const List<MapEntry<String, String>> profile = [
    MapEntry('이름', '오성민'),
    MapEntry('생년월일', '1995년 11월 19일'),
    MapEntry('거주지', '서울특별시 도봉구'),
    MapEntry('학력', '고려대학교(세종) 컴퓨터정보학과'),
    MapEntry('자격증', '정보처리기사, SQLD, ADsP'),
  ];

  // 기술스택 데이터
  static const Map<String, dynamic> stacks = {
    // 언어 스택
    'language': [
      {
        'label': 'Java',
        'icon': SimpleIcons.coffeescript,
        'color': SimpleIconColors.coffeescript
      },
      {
        'label': 'Dart',
        'icon': SimpleIcons.dart,
        'color': SimpleIconColors.dart
      },
      {
        'label': 'Swift',
        'icon': SimpleIcons.swift,
        'color': SimpleIconColors.swift
      },
      {'label': 'C', 'icon': SimpleIcons.c, 'color': SimpleIconColors.c},
      {
        'label': 'JavaScript',
        'icon': SimpleIcons.javascript,
        'color': SimpleIconColors.javascript
      },
      {
        'label': 'HTML5',
        'icon': SimpleIcons.html5,
        'color': SimpleIconColors.html5
      },
      {
        'label': 'Python',
        'icon': SimpleIcons.python,
        'color': SimpleIconColors.python
      },
      {'label': 'R', 'icon': SimpleIcons.r, 'color': SimpleIconColors.r},
      {
        'label': 'CSS',
        'icon': SimpleIcons.css3,
        'color': SimpleIconColors.css3
      },
    ],
    // 프레임워크 스택
    'framework': [
      {
        'label': 'Flutter',
        'icon': SimpleIcons.flutter,
        'color': SimpleIconColors.flutter
      },
      {
        'label': 'UIkit',
        'icon': SimpleIcons.uikit,
        'color': SimpleIconColors.uikit
      },
      {
        'label': 'Spring Boot',
        'icon': SimpleIcons.springboot,
        'color': SimpleIconColors.springboot
      },
      {
        'label': 'Flask',
        'icon': SimpleIcons.flask,
        'color': SimpleIconColors.flask
      },
      {
        'label': 'MyBatis',
        'icon': SimpleIcons.twitter,
        'color': SimpleIconColors.twitter
      },
    ],
    // 라이브러리 스택
    'library': [
      {
        'label': 'Keras',
        'icon': SimpleIcons.keras,
        'color': SimpleIconColors.keras
      },
      {
        'label': 'Tensorflow',
        'icon': SimpleIcons.tensorflow,
        'color': SimpleIconColors.tensorflow
      },
      {
        'label': 'Scikit-learn',
        'icon': SimpleIcons.scikitlearn,
        'color': SimpleIconColors.scikitlearn
      },
      {
        'label': 'Numpy',
        'icon': SimpleIcons.numpy,
        'color': SimpleIconColors.numpy
      },
      {
        'label': 'JQuery',
        'icon': SimpleIcons.jquery,
        'color': SimpleIconColors.jquery
      },
      {
        'label': 'Pandas',
        'icon': SimpleIcons.pandas,
        'color': SimpleIconColors.pandas
      },
    ],
    // 서버 스택
    'server': [
      {
        'label': 'Apache Tomcat',
        'icon': SimpleIcons.apachetomcat,
        'color': SimpleIconColors.apachetomcat
      },
    ],
    // 데이터베이스 스택
    'database': [
      {
        'label': 'MySQL',
        'icon': SimpleIcons.mysql,
        'color': SimpleIconColors.mysql
      },
      {
        'label': 'Firebase',
        'icon': SimpleIcons.firebase,
        'color': SimpleIconColors.firebase
      },
      {
        'label': 'SQLite',
        'icon': SimpleIcons.sqlite,
        'color': SimpleIconColors.sqlite
      },
    ],
    // IDE 스택
    'ide': [
      {
        'label': 'VSCode',
        'icon': SimpleIcons.visualstudiocode,
        'color': SimpleIconColors.visualstudiocode
      },
      {
        'label': 'Eclipse',
        'icon': SimpleIcons.eclipseide,
        'color': SimpleIconColors.eclipseide
      },
      {
        'label': 'Xcode',
        'icon': SimpleIcons.xcode,
        'color': SimpleIconColors.xcode
      },
      {
        'label': 'Google Colab',
        'icon': SimpleIcons.googlecolab,
        'color': SimpleIconColors.googlecolab
      },
    ],
    // 툴 스택
    'tools': [
      {'label': 'Git', 'icon': SimpleIcons.git, 'color': SimpleIconColors.git},
      {
        'label': 'Github',
        'icon': SimpleIcons.github,
        'color': SimpleIconColors.github
      },
      {
        'label': 'Notion',
        'icon': SimpleIcons.notion,
        'color': SimpleIconColors.notion
      },
      {
        'label': 'Slack',
        'icon': SimpleIcons.slack,
        'color': SimpleIconColors.slack
      },
      {
        'label': 'Fork',
        'icon': SimpleIcons.sourcetree,
        'color': SimpleIconColors.sourcetree
      },
      {
        'label': 'Miro',
        'icon': SimpleIcons.miro,
        'color': SimpleIconColors.miro
      },
      {
        'label': 'Figma',
        'icon': SimpleIcons.figma,
        'color': SimpleIconColors.figma
      },
    ],
  };

  // 프로젝트 데이터
  static final List<Project> projects = [
    Project(
      title: "Dorothy - Flutter 앱 프로젝트(앱스토어 출시)",
      image: "images/dorothy_thumb.png",
      term: "23/11/07 ~ 23/11/21",
      team: "팀 프로젝트 (3명)",
      description: "퍼스널컬러 진단과 얼굴 나이 예측 서비스를 제공하는 앱",
      notionUrl:
          "https://ethan-oh.notion.site/Dorothy-Flutter-App-6a85258eb42f4d7aaac70d0bd7de71e7?pvs=4",
    ),
    Project(
      title: "Mappy - Flutter 앱 프로젝트",
      image: "images/mappy_thumb.png",
      term: "23/10/12 ~ 23/10/30",
      team: "팀 프로젝트 (4명)",
      description: "얼굴 인식을 통한 연령 예측 & 심리 상담 Chat-bot 앱",
      notionUrl:
          "https://ethan-oh.notion.site/Mappy-Flutter-App-ced3b718f27946f1bd11f6b1c8535a7b?pvs=4",
    ),
    Project(
      title: "DatFlix - Swift 앱 프로젝트",
      image: "images/datflix_thumb.jpeg",
      term: "23/09/15 ~ 23/09/27",
      team: "팀 프로젝트 (5명)",
      description: "영화정보 제공 및 댓글의 긍정 부정 예측 서비스 앱",
      notionUrl:
          "https://ethan-oh.notion.site/DatFlix-Swift-App-792a8286cd6d49dcbbf67659454af057?pvs=4",
    ),
    Project(
      title: "RPART - Flutter 앱 프로젝트",
      image: "images/rpart_thumb.jpeg",
      term: "23/08/04 ~ 23/08/14",
      team: "팀 프로젝트 (5명)",
      description: "역O동 아파트 전세금 예측 앱",
      notionUrl:
          "https://ethan-oh.notion.site/RPART-Flutter-App-f75e77907a8c49c9acd0fb5b549fccf3?pvs=4",
    ),
    Project(
      title: "ANJ 펫샵 - Spring 웹 프로젝트",
      image: "images/anj_thumb.png",
      term: "23/05/29 ~ 23/06/16",
      team: "팀 프로젝트 (5명)",
      description: "스프링부트 기반 반려동물용품 쇼핑몰 웹 사이트",
      notionUrl:
          "https://ethan-oh.notion.site/ANJ-Spring-Web-36ec519ee3dd462897b84cc350c57eef?pvs=4",
    ),
  ];

  // more_block 데이터
  static final List<More> mores = [
    More(
      title: 'GitHub',
      url: 'https://github.com/ethan-oh',
      icon: SimpleIcons.github,
      iconColor: SimpleIconColors.github,
    ),
    More(
      title: 'Youtube',
      url: 'https://youtube.com/@ethan-oh',
      icon: SimpleIcons.youtube,
      iconColor: SimpleIconColors.youtube,
    ),
    More(
      title: 'Notion',
      url:
          'https://ethan-oh.notion.site/dfc9c2edcc1345cb90d11d4261bd0a79?pvs=4',
      icon: SimpleIcons.notion,
      iconColor: SimpleIconColors.notion,
    ),
  ];
}
