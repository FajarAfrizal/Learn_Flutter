import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:formlogin/dashboard.dart';


class MultipleWidget extends StatefulWidget {
  const MultipleWidget({super.key});

  @override
  State<MultipleWidget> createState() => _MultipleWidgetState();
}

class _MultipleWidgetState extends State<MultipleWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: () {},
         child: Text("tombol 1")
        ),
        ElevatedButton(onPressed: (){
        },
        child: Text("Tombol 2")
        ),
        ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(email: "")
          ),
        );
        },
        child: Text("kembali")
        
        )
      ],
    );
  }
}