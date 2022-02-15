import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stoxdata/components/stox_data.dart';
import 'dart:core';

//my api key:ee207b2f55b24159b0c483fb5b8a9fe8

class DataScreen extends StatefulWidget {
  static String id = 'data_screen';

  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  String selectedstock='AAPL';


  List<DropdownMenuItem> getitems(){
    List <DropdownMenuItem<String>> dropitems=[];
    for(String stox in stoxlist){
      var newitems = DropdownMenuItem(
        child: Text(stox,
        ),
        value: stox,
      );
      dropitems.add(newitems);
    }
    return dropitems;
  }

  String stocprice='';

  void getprice() async{
    String data= await stockdata().getStockdata(selectedstock);  //looooooooooooootttttttt
    setState(() {
      stocprice = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getprice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Welcome to StoxData App '),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.black,
              elevation: 7.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
                child: Text(
                  '${selectedstock}= ${stocprice} USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 270.0,),

          Expanded(
            child: Container(
              height: 180.0,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(top: 30.0),
              color: Colors.black,
               child: DropdownButton<dynamic>(items: getitems(),
               onChanged: (value){
                 setState(() {
                   selectedstock=value!;
                   getprice();
                 }
                 );
               },
               ),
            ),
          ),
        ],
      ),
    );
  }
}
