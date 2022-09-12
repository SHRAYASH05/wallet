import 'package:first_app/transaction.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transaction = [
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Feb SIP',
        amount: 6000,
        date: DateTime.now(),
        iconid: '+',
        colorid: '#1BA8431A',
        textcolor: '#1BA843'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 4000,
        date: DateTime.now(),
        iconid: '-',
        colorid: '#F1414B1A',
        textcolor: '#D85151'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 25000,
        date: DateTime.now(),
        iconid: '+',
        colorid: '#1BA8431A',
        textcolor: '#1BA843'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 2000,
        date: DateTime.now(),
        iconid: '-',
        colorid: '#F1414B1A',
        textcolor: '#D85151'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 4000,
        date: DateTime.now(),
        iconid: '-',
        colorid: '#F1414B1A',
        textcolor: '#D85151'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 25000,
        date: DateTime.now(),
        iconid: '+',
        colorid: '#1BA8431A',
        textcolor: '#1BA843'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 2000,
        date: DateTime.now(),
        iconid: '-',
        colorid: '#F1414B1A',
        textcolor: '#D85151'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 25000,
        date: DateTime.now(),
        iconid: '+',
        colorid: '#1BA8431A',
        textcolor: '#1BA843'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 2000,
        date: DateTime.now(),
        iconid: '-',
        colorid: '#F1414B1A',
        textcolor: '#D85151'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 326,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: (fromCssColor('#150153')),
                      gradient: LinearGradient(
                        colors: [
                          ((fromCssColor('#150153'))),
                          (fromCssColor('#5322F0'))
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 30),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              '<-',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                //fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 81,
                            height: 32,
                            margin: EdgeInsets.only(top: 22.25, left: 20),
                            child: Text(
                              'Wallet',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 56),
                            child: Text(
                              "Available Balance",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(0.6)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(top: 14),
                            child: Text(
                              "1,20,000.00",
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 75.0, left: 20.0, bottom: 15),
                    child: Text(
                      'Recent Transactions',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      children: transaction.map((tx) {
                        return Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      shape: CircleBorder(),
                                      backgroundColor: fromCssColor(tx.colorid),
                                      side: BorderSide.none,
                                    ),
                                    child: Text(
                                      tx.iconid,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: (fromCssColor(tx.textcolor))),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                //Container(
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(bottom: 4),
                                      child: Text(
                                        tx.id,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: (fromCssColor('#231F20'))),
                                      ),
                                    ),
                                    Text(
                                      tx.type,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: (fromCssColor('#918F90')),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 80),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        tx.amount.toString(),
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: fromCssColor(tx.textcolor),
                                        ),
                                      ),
                                      Text(
                                        DateFormat('dd LLL yyyy')
                                            .format(tx.date),
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: fromCssColor('#918F90'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                '_____________________________________________________',
                                style: TextStyle(
                                  color: Colors.grey.withOpacity(0.4),
                                ),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 295,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 56,
                          width: 56,
                          margin:
                              const EdgeInsets.only(left: 100.0, right: 20.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white,
                            ),
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.blue,
                              ),
                            ),
                            onPressed: () {
                              showBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: ,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Container(
                          height: 56,
                          width: 56,
                          margin:
                              const EdgeInsets.only(left: 39.0, right: 20.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white,
                            ),
                            child: Text(
                              '-',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.blue,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 8, left: 95),
                          child: Text(
                            'Add',
                            style: TextStyle(
                              color: fromCssColor('#5300F4'),
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 77, top: 8),
                          child: Text(
                            'withdraw',
                            style: TextStyle(
                              color: fromCssColor('#5300F4'),
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
