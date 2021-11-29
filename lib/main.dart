import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const Demonstration());
}

class Demonstration extends StatelessWidget {
  const Demonstration({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Thumbs up',
          style: GoogleFonts.pacifico(
            color: Colors.white38,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            
          )),
          backgroundColor: Colors.blueAccent

        ),
        
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [WithOutState(), WithState()],
          ),
        ),
      )
    );
  }
}

  class WithState extends StatefulWidget {
    const WithState({ Key? key }) : super(key: key);
  
    @override
    _WithStateState createState() => _WithStateState();
  }
  
  class _WithStateState extends State<WithState> {

    bool toogle = false;
    @override
    Widget build(BuildContext context) {
      return IconButton(
        onPressed: () {
          setState((){
            toogle = !toogle;
          });
        },
        icon: Icon(
          toogle ? Icons.thumb_down_alt_sharp:Icons.thumb_up_alt_sharp,
          color: toogle ? Colors.red : Colors.blue,
        ));
    }
  }

  class WithOutState extends StatelessWidget {
    const WithOutState({ Key? key }) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return TextButton(
        child: const Text('Click Me :)'),
        onPressed: () {},
        );
    }
  }

  


        


