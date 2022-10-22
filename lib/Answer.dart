import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    theme:
    ThemeData(
      primarySwatch: Colors.blue,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            elevation: 8, shape: CircleBorder(), minimumSize: Size.square(80)),
      ),
    );

    return Container(
      width: 200,
      height: 60,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor:
              getColor(Color.fromARGB(193, 14, 204, 218), Colors.white),
          backgroundColor:
              getColor(Colors.white, Color.fromARGB(193, 14, 204, 218)),
          side: getBorder(Color.fromARGB(193, 14, 204, 218), Colors.black54),
        ),
        onPressed: selectHandler,
        child: Text('Answer 1'),
      ),
    );
  }

  MaterialStateProperty<Color> getColor(Color color, Color color2) {
    return MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        return color2;
      }
      return color;
    });
  }

  MaterialStateProperty<BorderSide> getBorder(Color color, Color color2) {
    return MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        return BorderSide(color: color2, width: 2);
      }
      return BorderSide(color: color, width: 2);
    });
  }
}
