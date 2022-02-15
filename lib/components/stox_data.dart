import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:stoxdata/screens/data_screen.dart';

const List<String> stoxlist=[
  'AAPL',
  'AMZN',
  'IBM',
  'ABNB',
  'MSFT',
  'NFLX',
  'TSLA'
];

class stockdata{
  Future getStockdata(String selectedstock) async {
    http.Response response = await http.get(Uri.parse('https://api.twelvedata.com/price?symbol=${selectedstock}&apikey=ee207b2f55b24159b0c483fb5b8a9fe8#'));

    if (response.statusCode==200){
      var prise = jsonDecode(response.body)['price'];
      return prise;

    }else{
      return response.statusCode;
    }
  }

}
