import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerWidget extends StatelessWidget{
  
  final String? text;
  final String? subtext;

  const ContainerWidget({super.key,this.text,this.subtext});

@override
Widget build(BuildContext context) {
  return Container(
             padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
           BoxShadow(
    color: Colors.grey.shade600.withOpacity(0.2),
    spreadRadius: 1,
    blurRadius: 5,
    offset: const Offset(0, 5),
  ),
 
    ],
                ),

    child: ExpansionTile(
      
              title: Text('$text', style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w700,height: 1.2125,
              color: const Color(0xff111113),)),
              trailing: const SizedBox(),
              children: <Widget>[
                ListTile(title: Text('$subtext')),
              ],
            ),
  );
}


}


