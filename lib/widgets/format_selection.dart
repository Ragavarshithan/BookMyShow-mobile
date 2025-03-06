// import 'package:flutter/material.dart';
//
// Future<void> FormatSelection(BuildContext context, String imageUrl,String language, List<String> formats,Function(String) onselect){
//   return showDialog(
//       context: context,
//       builder: (BuildContext context){
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Image.network(
//                   imageUrl,
//                   height: 150,
//                   width: double.infinity,
//                   fit: BoxFit.cover
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                   language,
//                 style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10,),
//               Column(
//                 children: formats.map((format){
//                   return
//         },
//               )
//             ],
//           ),
//         )
//       }
//   )
// }