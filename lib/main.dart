import 'package:first_app/transaction.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import './transaction.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

//import 'package:swipebuttonflutter/swipebuttonflutter.dart';
//import 'package:upi_india/upi_india.dart';

//import 'package:upi_pay/upi_pay.dart';

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
  var maxLength = 10;
  var textLength = 0;
  final List<Transaction> transaction = [
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Feb SIP',
        amount: 6000,
        date: DateTime.now(),
        imageid: 'assets/images/arrowupright.png',
        colorid: '#1BA8431A',
        textcolor: '#1BA843'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 4000,
        date: DateTime.now(),
        imageid: 'assets/images/arrowdownright.png',
        colorid: '#F1414B1A',
        textcolor: '#D85151'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 25000,
        date: DateTime.now(),
        imageid: 'assets/images/arrowupright.png',
        colorid: '#1BA8431A',
        textcolor: '#1BA843'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 2000,
        date: DateTime.now(),
        imageid: 'assets/images/arrowdownright.png',
        colorid: '#F1414B1A',
        textcolor: '#D85151'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 4000,
        date: DateTime.now(),
        imageid: 'assets/images/arrowdownright.png',
        colorid: '#F1414B1A',
        textcolor: '#D85151'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 25000,
        date: DateTime.now(),
        imageid: 'assets/images/arrowupright.png',
        colorid: '#1BA8431A',
        textcolor: '#1BA843'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 2000,
        date: DateTime.now(),
        imageid: 'assets/images/arrowdownright.png',
        colorid: '#F1414B1A',
        textcolor: '#D85151'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 25000,
        date: DateTime.now(),
        imageid: 'assets/images/arrowupright.png',
        colorid: '#1BA8431A',
        textcolor: '#1BA843'),
    Transaction(
        id: 'UPI-9988338844@ybl',
        type: 'Profit Withdraw',
        amount: 2000,
        date: DateTime.now(),
        imageid: 'assets/images/arrowdownright.png',
        colorid: '#F1414B1A',
        textcolor: '#D85151'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 250,
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
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 81,
                              height: 32,
                              margin: EdgeInsets.only(top: 8, left: 20),
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
                              margin: EdgeInsets.only(top: 10),
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
                      height: 280,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        //shrinkWrap: true,
                        physics: ScrollPhysics(),
                        child: Column(
                          children: transaction.map((tx) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          shape: CircleBorder(),
                                          backgroundColor:
                                              fromCssColor(tx.colorid),
                                          side: BorderSide.none,
                                        ),
                                        child: Image.asset(
                                          tx.imageid.toString(),
                                          height: 20,
                                          width: 20,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    //Container(
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(bottom: 4),
                                          child: Text(
                                            tx.id,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color:
                                                    (fromCssColor('#231F20'))),
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
                                    Spacer(),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
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
                                Divider(
                                  color: Colors.grey,
                                  indent: 20,
                                  endIndent: 20,
                                  //height: 20,
                                )
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 225,
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
                                const EdgeInsets.only(left: 115.0, right: 20.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.white,
                              ),
                              child: Image.asset(
                                'assets/images/additionicon.png',
                                height: 27,
                                width: 27,
                                fit: BoxFit.cover,
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) => Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.79,
                                    decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(25.0),
                                        topRight: const Radius.circular(25.0),
                                      ),
                                    ),
                                    child: SingleChildScrollView(
                                        child: Column(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 25, left: 20),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'Add Fund',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Spacer(),
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: Icon(
                                                      Icons.close,
                                                      color: Colors.black,
                                                      size: 15,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 20,
                                                right: 20,
                                                // top: 20,
                                              ),
                                              // padding: EdgeInsets.only(top:20),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                                color: fromCssColor('#F6F6F6'),
                                              ),
                                              padding: EdgeInsets.only(
                                                left: 20,
                                                top: 20,
                                                //bottom: 18,
                                              ),
                                              child: TextField(
                                                scrollPadding: EdgeInsets.only(
                                                  bottom: 20,
                                                ),
                                                cursorColor: Colors.black,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                  labelText: 'Enter Amount',
                                                  floatingLabelBehavior:
                                                      FloatingLabelBehavior
                                                          .always,

                                                  border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                    top: 50,
                                                  ),
                                                  labelStyle: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                  // border: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 16),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 2,
                                                        right: 18,
                                                        left: 20,
                                                        bottom: 2),
                                                    child: OutlinedButton(
                                                      style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                          fromCssColor(
                                                              '#5322F01A'),
                                                        ),
                                                        shape: MaterialStateProperty
                                                            .all<
                                                                RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        '+1,000',
                                                        style: TextStyle(
                                                          color: fromCssColor(
                                                              '#5322F0'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 2,
                                                        right: 18,
                                                        bottom: 2),
                                                    child: OutlinedButton(
                                                      style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                          fromCssColor(
                                                              '#5322F01A'),
                                                        ),
                                                        shape: MaterialStateProperty
                                                            .all<
                                                                RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        '+2,000',
                                                        style: TextStyle(
                                                          color: fromCssColor(
                                                              '#5322F0'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 2,
                                                        right: 18,
                                                        bottom: 2),
                                                    child: OutlinedButton(
                                                      style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                          fromCssColor(
                                                              '#5322F01A'),
                                                        ),
                                                        shape: MaterialStateProperty
                                                            .all<
                                                                RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        '+5,000',
                                                        style: TextStyle(
                                                          color: fromCssColor(
                                                              '#5322F0'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              color: fromCssColor('#FFFFFF'),
                                              margin: EdgeInsets.only(
                                                  left: 20, right: 20, top: 10),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom:
                                                        MediaQuery.of(context)
                                                            .viewInsets
                                                            .bottom),
                                                child: TextField(
                                                  cursorColor: Colors.black,
                                                  decoration: InputDecoration(
                                                    suffixText:
                                                        ('${textLength.toString()}/${maxLength.toString()}'),
                                                    counterText: "",
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: fromCssColor(
                                                            '#D3D2D2'),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    hintText: 'Write notes',
                                                    fillColor: Colors.white,
                                                    labelStyle: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  autofocus: false,
                                                  maxLength: maxLength,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      textLength = value.length;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 20,
                                                  bottom: 16,
                                                  left: 20),
                                              child: Text(
                                                'Pay though',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  bottom: 16, left: 20),
                                              child: Text(
                                                'UPI',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                  height: 17,
                                                  width: 17,
                                                  margin: EdgeInsets.only(
                                                      left: 20, right: 13.5),
                                                  child: OutlinedButton(
                                                    onPressed: () {},
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      shape: CircleBorder(),
                                                      shadowColor: fromCssColor(
                                                          '#D3D2D2'),

                                                      // padding: EdgeInsets.all(5),
                                                    ),
                                                  ),
                                                ),
                                                Image.asset(
                                                  'assets/images/phonepay.png',
                                                  fit: BoxFit.cover,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 6, bottom: 3),
                                                      child: Text(
                                                        'Phone pay',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 6),
                                                      child: Text(
                                                        'State bank of India',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: fromCssColor(
                                                              '#A7A5A6'),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: 16,
                                              ),
                                              child: Row(
                                                children: <Widget>[
                                                  Container(
                                                    height: 17,
                                                    width: 17,
                                                    margin: EdgeInsets.only(
                                                        left: 20, right: 13.5),
                                                    child: OutlinedButton(
                                                      onPressed: () {},
                                                      style: OutlinedButton
                                                          .styleFrom(
                                                        shape: CircleBorder(),
                                                        shadowColor:
                                                            fromCssColor(
                                                                '#D3D2D2'),

                                                        // padding: EdgeInsets.all(5),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 27,
                                                    width: 32,
                                                    // color: Colors.red,
                                                    child: Image.asset(
                                                      'assets/images/googlepay.png',
                                                      height: 27,
                                                      width: 32,
                                                      // fit: BoxFit.scaleDown,
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 6, bottom: 3),
                                                        child: Text(
                                                          'Google pay',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 6),
                                                        child: Text(
                                                          'ICICI Bank',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: fromCssColor(
                                                                '#A7A5A6'),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: 16,
                                              ),
                                              child: Row(
                                                children: <Widget>[
                                                  Container(
                                                    height: 17,
                                                    width: 17,
                                                    margin: EdgeInsets.only(
                                                        left: 20, right: 13.5),
                                                    child: OutlinedButton(
                                                      onPressed: () {},
                                                      style: OutlinedButton
                                                          .styleFrom(
                                                        shape: CircleBorder(),
                                                        shadowColor:
                                                            fromCssColor(
                                                                '#D3D2D2'),

                                                        // padding: EdgeInsets.all(5),
                                                      ),
                                                    ),
                                                  ),
                                                  Image.asset(
                                                    'assets/images/upipay.png',
                                                    // fit: BoxFit.cover,
                                                    height: 32,
                                                    width: 32,
                                                    //   color: Colors.black,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          left: 6,
                                                          bottom: 3,
                                                        ),
                                                        child: Text(
                                                          'Enter UPI ID',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  left: 20,
                                                  top: 16,
                                                ),
                                                child: Text(
                                                  'Enter UPI ID',
                                                  style: TextStyle(
                                                    color:
                                                        fromCssColor('#A7A5A6'),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: fromCssColor('#FFFFFF'),
                                              margin: EdgeInsets.only(
                                                  left: 20, right: 20, top: 10),
                                              child: TextField(
                                                cursorColor: Colors.black26,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: fromCssColor(
                                                          '#D3D2D2'),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  hintText:
                                                      'eg:jhonwick0785@okicici',
                                                  fillColor: Colors.white,
                                                  labelStyle: TextStyle(
                                                    color:
                                                        fromCssColor('#BDBCBC'),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 13.33,
                                                  width: 13.33,
                                                  margin: EdgeInsets.only(
                                                      left: 20,
                                                      right: 9.34,
                                                      top: 10),
                                                  child: OutlinedButton(
                                                    child: Text(
                                                      'i',
                                                    ),
                                                    onPressed: () {},
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      shape: CircleBorder(),
                                                      shadowColor: fromCssColor(
                                                          '#7B7979'),
                                                      textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11,
                                                      ),

                                                      // padding: EdgeInsets.all(5),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      // left: 20,
                                                      right: 9.34,
                                                      top: 10),
                                                  child: Text(
                                                    'Enter UPI ID linked with your account',
                                                    style: TextStyle(
                                                      color: fromCssColor(
                                                          '#7B7979'),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            /* Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              '____________________________________________________',
                                              style: TextStyle(
                                                color: Colors.grey
                                                    .withOpacity(0.4),
                                              ),
                                            ),
                                          ),*/
                                            Divider(
                                              color: Colors.grey,
                                              indent: 20,
                                              endIndent: 20,
                                              //height: 20,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 20,
                                                top: 10,
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Net Banking',
                                                    style: TextStyle(
                                                      color: fromCssColor(
                                                          '#231F20'),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                      height: 5,
                                                      width: 10,
                                                      margin: EdgeInsets.only(
                                                        right: 30,
                                                        bottom: 16,
                                                      ),
                                                      child: IconButton(
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_outlined,
                                                        ),
                                                        alignment:
                                                            Alignment.center,
                                                        padding:
                                                            EdgeInsets.zero,
                                                        onPressed: () {},
                                                      ))
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              color: Colors.grey,
                                              indent: 20,
                                              endIndent: 20,
                                              //  height: 8,
                                            ),
                                            Card(
                                              margin: EdgeInsets.only(
                                                top: 30,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          left: 20,
                                                          top: 10,
                                                          bottom: 6,
                                                        ),
                                                        child: Text(
                                                          'Available Balance',
                                                          style: TextStyle(
                                                            color: fromCssColor(
                                                                '#656263'),
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 20,
                                                            bottom: 24),
                                                        child: Text(
                                                          '2,50,254.65',
                                                          style: TextStyle(
                                                            color: fromCssColor(
                                                                '#231F20'),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    // color:
                                                    //   fromCssColor('#5300F4'),
                                                    margin: EdgeInsets.only(
                                                      right: 20,
                                                      bottom: 16,
                                                    ),
                                                    height: 56,
                                                    width: 190,
                                                    child: ElevatedButton(
                                                      style: ButtonStyle(
                                                        padding: MaterialStateProperty
                                                            .all<EdgeInsets>(
                                                                EdgeInsets.only(
                                                                    left: 22,
                                                                    top: 19,
                                                                    bottom:
                                                                        19)),
                                                        backgroundColor:
                                                            MaterialStateProperty.all<
                                                                    Color>(
                                                                fromCssColor(
                                                                    '#5300F4')),
                                                        shape: MaterialStateProperty
                                                            .all<
                                                                RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.0),
                                                            // side: BorderSide(color: Colors.red)
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          'Swipe to add >',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 14,
                                                          ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                  ),
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
                              child: Image.asset(
                                'assets/images/wdicon.png',
                                height: 27,
                                width: 27,
                                fit: BoxFit.cover,
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) => Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.52,
                                    decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(25.0),
                                        topRight: const Radius.circular(25.0),
                                      ),
                                    ),
                                    child: ListView(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 35, left: 20),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    'Withdraw Fund',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Spacer(),
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: TextButton(
                                                      onPressed: () {},
                                                      child: Icon(
                                                        Icons.close,
                                                        color: Colors.black,
                                                        size: 15,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 20,
                                                right: 20,
                                                // top: 20,
                                              ),
                                              // padding: EdgeInsets.only(top:20),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                                color: fromCssColor('#F6F6F6'),
                                              ),
                                              padding: EdgeInsets.only(
                                                left: 20,
                                                top: 20,
                                                //bottom: 18,
                                              ),
                                              child: TextField(
                                                cursorColor: Colors.black,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                  labelText: 'Enter Amount',
                                                  floatingLabelBehavior:
                                                      FloatingLabelBehavior
                                                          .always,

                                                  border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                    top: 50,
                                                  ),
                                                  labelStyle: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                  // border: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 16),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 2,
                                                        right: 18,
                                                        left: 20,
                                                        bottom: 2),
                                                    child: OutlinedButton(
                                                      style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                          fromCssColor(
                                                              '#5322F01A'),
                                                        ),
                                                        shape: MaterialStateProperty
                                                            .all<
                                                                RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        '+1,000',
                                                        style: TextStyle(
                                                          color: fromCssColor(
                                                              '#5322F0'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // margin:
                                                    //    EdgeInsets.only(left: 18),

                                                    padding: EdgeInsets.only(
                                                        top: 2,
                                                        right: 18,
                                                        // left: 20,
                                                        bottom: 2),
                                                    child: OutlinedButton(
                                                      style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                          fromCssColor(
                                                              '#5322F01A'),
                                                        ),
                                                        shape: MaterialStateProperty
                                                            .all<
                                                                RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        '+2,000',
                                                        style: TextStyle(
                                                          color: fromCssColor(
                                                              '#5322F0'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 2,
                                                        right: 18,
                                                        // left: 20,
                                                        bottom: 2),
                                                    child: OutlinedButton(
                                                      style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                          fromCssColor(
                                                              '#5322F01A'),
                                                        ),
                                                        shape: MaterialStateProperty
                                                            .all<
                                                                RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        '+5,000',
                                                        style: TextStyle(
                                                          color: fromCssColor(
                                                              '#5322F0'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              color: fromCssColor('#FFFFFF'),
                                              margin: EdgeInsets.only(
                                                  left: 20, right: 20, top: 10),
                                              child: TextField(
                                                cursorColor: Colors.black,
                                                decoration: InputDecoration(
                                                  suffixText:
                                                      ('${textLength.toString()}/${maxLength.toString()}'),
                                                  counterText: "",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: fromCssColor(
                                                          '#D3D2D2'),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  hintText: 'Write notes',
                                                  fillColor: Colors.white,
                                                  labelStyle: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                autofocus: false,
                                                maxLength: maxLength,
                                                onChanged: (value) {
                                                  setState(() {
                                                    textLength = value.length;
                                                  });
                                                },
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 20,
                                                  bottom: 16,
                                                  left: 20),
                                              child: Text(
                                                'Withdraw to',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 20,
                                                      right: 12,
                                                      top: 16,
                                                      bottom: 40),
                                                  //height: 32,
                                                  //width: 32,
                                                  child: Image.asset(
                                                    'assets/images/hdfc.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  margin: EdgeInsets.only(
                                                      bottom: 45, top: 20),
                                                  child: Text(
                                                    'HDFC Bank-9999',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Card(
                                              margin: EdgeInsets.only(
                                                top: 30,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          left: 20,
                                                          top: 10,
                                                          bottom: 6,
                                                        ),
                                                        child: Text(
                                                          'Available Balance',
                                                          style: TextStyle(
                                                            color: fromCssColor(
                                                                '#656263'),
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 20,
                                                            bottom: 24),
                                                        child: Text(
                                                          '2,50,254.65',
                                                          style: TextStyle(
                                                            color: fromCssColor(
                                                                '#231F20'),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    // color:
                                                    //   fromCssColor('#5300F4'),
                                                    margin: EdgeInsets.only(
                                                      right: 20,
                                                      bottom: 16,
                                                    ),
                                                    height: 56,
                                                    width: 190,
                                                    child: ElevatedButton(
                                                      style: ButtonStyle(
                                                        padding: MaterialStateProperty
                                                            .all<EdgeInsets>(
                                                                EdgeInsets.only(
                                                                    left: 22,
                                                                    top: 19,
                                                                    bottom:
                                                                        19)),
                                                        backgroundColor:
                                                            MaterialStateProperty.all<
                                                                    Color>(
                                                                fromCssColor(
                                                                    '#5300F4')),
                                                        shape: MaterialStateProperty
                                                            .all<
                                                                RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.0),
                                                            // side: BorderSide(color: Colors.red)
                                                          ),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          'Swipe to add >',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 14,
                                                          ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
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
      ),
    );
  }
}
