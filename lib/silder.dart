import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'multiprovider1.dart';

class provedexmple5 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _provedexmple5();
  }

}


class _provedexmple5 extends State <provedexmple5> {



    double datadd = 1;

    @override
    Widget build(BuildContext context) {

      print("build method");

      final cp = Provider.of<countmulclass>(context,listen: false);

      return Scaffold(
        body: Container(
          child: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
              // child: Center(child: Text(cp.count.toString(),style: (TextStyle(fontSize: 60)),)),
              // child: Consumer<countp2>(builder: (context,value,child)
              // {
              //   print("only this consumer method biuld");
              //   return Center(child: Text(value.count.toString(),style: (TextStyle(fontSize: 60)),));
              // }),
              child: Center(
                child: Column(
                  children: [

                  Consumer<countmulclass>(builder: (context,value,child)
                    {

                      print("only this consumer method biuld1");


                      return Slider( min:0,max:1 ,value: cp.data, onChanged: (val) {

                             cp.setdata(val);
                        });
                    }),

                    Consumer<countmulclass>(builder: (context,value,child)
                    {

                      print("only this consumer method biuld2");

                      return Center(
                        child: Row(
                          children: [
                            Container(
                              width: 324,
                              height: 242,
                              color: Colors.deepOrange.withOpacity(value.data),
                              child: Center(child: Text("container1")),
                            ),

                            Container(
                              width: 324,
                              height: 242,
                              color: Colors.yellow.withOpacity(value.data),
                              child: Center(child: Text("container2")),

                            )
                          ],
                        ),
                      );
                    }),
                    // Text('{$data}'),
                  ],
                ),
              ),

            ),
          ),
        ),
      );
    }
  }


