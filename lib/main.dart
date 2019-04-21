import 'package:flutter/material.dart';

// 1、dart的语法，主函数(入口函数)
void main() => runApp(MyApp());

// ---关于结构：

// StatelessWidget和StatefulWidget的区别：
// StatelessWidget不可变窗口状态，适合大部分场景
// StatefulWidget可变窗户状态，例如进度条
// 2、声明myapp类
// class MyApp extends StatelessWidget {
//   // 3、重写build方法
//   @override
//   Widget build(BuildContext context) {

//   //4、返回一个material风格的组件
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//   //5、创建一个appBar,并添加文本
//         appBar: AppBar(
//           title: Text('WELCOME TO MY DEMO'),
//         ),
//   //6、在主体的中间区域加入hello world的文本       
//         body: Center(
//           child: Text('HELLO WORLD'),
//         ),      
//       ),     
//     );
//   }
// }

// ---文本组件的使用

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title:'text widget',
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             'hello ,flutter',
//             textAlign: TextAlign.center,  //文本样式，left，center，right
//             overflow: TextOverflow.ellipsis,  //剪切文本，clip，ellipsis，fade
//             maxLines: 1,   //最大行数
//             style: TextStyle(  //样式写在style里面
//               fontSize: 25.0,  //浮点值
//               color: Color.fromARGB(255, 250, 150, 150),
//               decoration: TextDecoration.underline,
//               decorationStyle: TextDecorationStyle.solid,
//             ),
//             ),
//         ),
//       ),
      
//     );
//   }
// }

// ---针对Container内child的对齐方式
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '针对Container内child的对齐方式',
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             child: Text('这里可以new也可以不用写',style: TextStyle(fontSize: 25.0),),
//             alignment: Alignment.topLeft, //容器子内容的对齐方式
//             width: 400.0,
//             height: 400.0,
//             // color: Colors.blue,
//             // padding: const EdgeInsets.all(5.0),
//             padding: const EdgeInsets.fromLTRB(5.0, 10.0, 15.0, 0.0),
//             margin: const EdgeInsets.all(10.0),
//             decoration: new BoxDecoration(  //设置背景和边框，不可和color同时使用！！！
//               gradient: const LinearGradient(
//                 colors: [Colors.blue,Colors.pink,Colors.red]
//               ),
//               border: Border.all(width: 2.0,color: Colors.black), //边框
//             ),
//           ),
//         ),
//       ),
      
//     );
//   }
// }


// ---加入图片的几种方式

// * Image.asset:加载资源图片，就是加载项目资源目录中的图片,加入图片后会增大打包的包体体积，用的是相对路径。在项目根目录下新建了一个images文件夹，文件夹下面放了一个图片,
// #pubspec.yaml 文件中书写如下,
// assets:
    // - images/blogtouxiang.jpg
// * Image.network:网络资源图片，意思就是你需要加入一段http://xxxx.xxx的这样的网络路径地址。
// * Image.file:加载本地图片，就是加载本地文件中的图片，这个是一个绝对路径，跟包体无关。
// * Image.memory: 加载Uint8List资源图片

// fit属性可以控制图片的拉伸和挤压，这些都是根据图片的父级容器来的，我们先来看看这些属性（建议此部分组好看视频理解）。
// * BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。
// * BoxFit.contain:全图显示，显示原比例，可能会有空隙。
// * BoxFit.cover：显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）。
// * BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸，可能裁切。
// * BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉伸，可能裁切。
// * BoxFit.scaleDown：效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '加入图片的几种方式',
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             // child: Image.asset('images/blogtouxiang.jpg'), //静态资源的使用方式
//             child: new Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1833147597,1658902237&fm=27&gp=0.jpg',
//             scale: 1.0,
//             fit: BoxFit.contain,
//             color: Colors.greenAccent,  //属于图片混合模式可以让图片改变颜色，color是要混合的颜色
//             colorBlendMode: BlendMode.darken,
//             repeat: ImageRepeat.repeat,  //控制图片是否重复
//             ),
//             width: 300.0,
//             height: 200.0,
//             color: Colors.lightBlue,
//           ),
          
//         ),
//       ),
//     );
//   }
// }

// ---关于列表

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '关于列表瓦片',
//       home: Scaffold(
//         appBar: new AppBar(
//           title: Text('我是列表', style: TextStyle(fontSize: 30.0,color: Colors.pink),),
//         ),
//         body: new ListView(
//           scrollDirection: Axis.horizontal,  //默认纵向，设置为横向滚动
//           children: <Widget>[
//             // new ListTile(  //列表瓦片
//             //   leading: new Icon(Icons.access_time),
//             //   title: new Text('access_time'),
//             // ),
//             // new ListTile(  //列表瓦片
//             //   leading: new Icon(Icons.account_balance),
//             //   title: new Text('account_balance'),
//             // )
//             // --------------图片列表--------------
//             new Image.network('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1955876286,2195522099&fm=27&gp=0.jpg'),
//             new Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3217532203,2209706107&fm=27&gp=0.jpg'),
//             new Image.network('https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2561902674,910285669&fm=27&gp=0.jpg'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 简化代码 
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '关于列表瓦片',
//       home: Scaffold(
//         appBar: new AppBar(
//           title: Text('我是列表', style: TextStyle(fontSize: 30.0,color: Colors.pink),),
//         ),
//         body: Center(
//           child: Container(
//             child: MyList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
// class MyList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       scrollDirection: Axis.horizontal,  //默认纵向，设置为横向滚动
//       children: <Widget>[
//             new Image.network('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1955876286,2195522099&fm=27&gp=0.jpg'),
//             new Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3217532203,2209706107&fm=27&gp=0.jpg'),
//             new Image.network('https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2561902674,910285669&fm=27&gp=0.jpg'),
//           ],
//     );
//   }
// }


