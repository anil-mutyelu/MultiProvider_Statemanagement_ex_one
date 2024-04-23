import 'package:flutter/cupertino.dart';

class countmulclass with ChangeNotifier
{
  double _data =1.0;

  double get data => _data;

  void setdata(double val )
  {
    _data =val;
    notifyListeners();
  }

}


// //
// //   ChangeNotifierProvider(
// //     // create: (_)=>countp(),
// //     create: (_)=>countp2(),
// //
// //
// //   );
// // }
// // }