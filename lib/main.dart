import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer()..setReleaseMode(ReleaseMode.loop);

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    screen1(),
    screen2(),
    screen3(),
    screen4(),
  ];

  int previousIndex=0;
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    if (currentIndex==0) player.play(AssetSource('music1.mp3'));
    return MaterialApp(
      title: '我的自傳',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                       useMaterial3: true,),
      home: Scaffold(
        appBar: AppBar(title: Text('我的自傳'),),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18,
          unselectedFontSize: 14,
          iconSize: 30,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: currentIndex==0? Image.asset('images/hands.jpg',width:40,height:40): Image.asset('images/hands.jpg',width:20,height:20), label:'自我介紹',),
            BottomNavigationBarItem(icon: Icon(Icons.school), label:'學習歷程',),
            BottomNavigationBarItem(icon: Icon(Icons.schedule_outlined), label:'學習計畫',),
            BottomNavigationBarItem(icon: Icon(Icons.engineering), label:'專業方向',),
          ],
          onTap: (index) {
            setState(() {
              previousIndex=currentIndex;
              currentIndex=index;
              if (index==0) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('music1.mp3'));
              }
              if (index==1) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('music2.mp3'));
              }
              if (index==2) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('music3.mp3'));
              }
              if (index==3) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('music4.mp3'));
              }
            });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='大家好，我是張運曜，一位目前就读于电子系资讯组的大三生。'
      '我出生于1990年10月31日，热爱摄影、旅行和打撞球。'
      '我家里有爸爸、妈妈、哥哥和奶奶。爸爸妈妈刚刚退休，哥哥是一名28岁的程序员'
      '，而奶奶享年98岁，目前在家享受天伦之乐。我最大的愿望是家人健康幸福快乐。'
      '毕业后，我希望能够找到一份令我满意的工作，并且开心地孝顺父母。尽管在小学和高中时期，'
      '我并没有觉得自己是读书的料，但是我妈妈一直鼓励我要完成大学学业。在来台湾之前，'
      '我在马来西亚完成了互联网技术专业的文凭，并顺利毕业。然后我申请了国立高雄科技大学，想要扩展留学的视野。'
      '我深受爸爸妈妈的支持与鼓励，我希望能够顺利毕业，回家让他们感到骄傲。感谢大家的聆听。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //放標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text('Who am I', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          //自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width:3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(s1, style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 10,),
          //放一張照片
          Container(
            color: Colors.blueAccent,
            child:Image.asset('images/home1.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/home2.jpg'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/home3.jpg'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {

  final String s2='在大学期间，我的学习历程变得多姿多彩。我开始涉猎前端和后端编程，同时探索了一些组合语言。'
      '这些编程技能的学习为我的技术能力增添了不少光彩，并为我未来的职业发展打下了坚实的基础。'
      '除了编程，我还走进了健身房，开始了健身之旅。这段经历不仅让我了解了健身知识，还培养了我的自律和毅力。'
      '学习健身知识，探索如何塑造健康的身体成为我生活的一部分。然而，我也遇到了一些挑战。'
      '电路和工程数学是让我感到头痛的课程，它们成为了我学习中的短板。'
      '理解复杂的电路结构和应用工程数学知识对我来说是一项挑战，但我努力克服困难，'
      '尝试寻找更多的学习资源和方法，以便更好地掌握这些概念。尽管遇到困难，但我从这些经历中获益良多。'
      '这些挑战让我更加坚定了自己的学习态度和毅力，也使我更加珍惜学习过程中的每一个成长机会。'
      '我相信，通过不断的努力和探索，我将克服困难，成为一个全面发展的个体。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //放標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text('學習歷程', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          //自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width:3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(s2, style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 10,),
          //放一張照片
          Container(
            color: Colors.redAccent,
            child:Image.asset('images/milestone1.jpg'),
            height: 200,
            width: 300,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/milestone2.jpg'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/milestone3.jpg'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大一時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 300,
              child: ListView(
                children: [
                  Text('1. 享受大學生活'),
                  Text('2. 人際關係'),
                  Text('3. 認識台灣文化'),
                  Text('4. 加强程式能力'),
                ],
              ),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大二時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 300,
              child: ListView(
                children: [
                  Text('1. 享受大學生活'),
                  Text('2. 人際關係'),
                  Text('3. 認識台灣文化'),
                  Text('4. 思考專題方向'),
                  Text('5. 加强程式能力'),
                ],
              ),
            ),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大三時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 300,
              child: ListView(
                children: [
                  Text('1. 享受大學生活'),
                  Text('2. 人際關係'),
                  Text('3. 認識台灣文化'),
                  Text('4. 修滿通識課'),
                  Text('5. 專題製作'),
                  Text('6. 加强程式能力'),
                ],
              ),
            ),
          ],
        ),
        Row(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大四時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 300,
              child: ListView(
                children: [
                  Text('1. 享受大學生活'),
                  Text('2. 人際關係'),
                  Text('3. 認識台灣文化'),
                  Text('4. 準備步入職場'),
                  Text('5. 加强程式能力'),
                ],
              ),
            ),
          ],
        ),
        Row(),
      ],),
    );
  }
}
class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('就業方向'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 300,
              child: ListView(
                children: [
                  Text('1. 軟體工程師'),
                  Text('2. 網路工程師'),
                  Text('3. 網頁工程師'),
                  Text('4. 資訊應用發展工程師'),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        //放一張照片
        Container(
          color: Colors.blueGrey,
          child:Image.asset('images/final.jpg'),
          height: 200,
          width: 150,
        ),

      ],),
    );
  }
}
