import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:token_converter/views/PageWidgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final _formKey = GlobalKey<FormState>();
   String walletKeys = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Token Converter',
      style: TextStyle(color: Colors.deepPurple,
      fontWeight: FontWeight.bold),),
      centerTitle: true,backgroundColor: Colors.white,),
      body: SafeArea(child: Form(
        key: _formKey,
        child: Container(padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(children: [
          
               TextFieldContainer(
                                validator: (val) =>
                                    val!.length <= 8
                                        ? 'Enter Valid Btc Address'
                                        : null,
                                onChange: (val) { },
                                name: 'Recieving BTC Address',
                                hint: '    Paste address here',
                                iconData: Icons.monetization_on
                              ),
          
                               TextFieldContainer(
                                validator: (val) =>
                                    val!.length <= 2
                                        ? 'Enter Valid Token Name'
                                        : null,
                                onChange: (val) { },
                                name: 'Token Name',
                                hint: '    Add token name',
                                iconData: Icons.file_copy,
                              ),
                
                
              TextFieldContainer(
                                validator: (val) =>
                                    val!.length <= 40
                                        ? 'Enter Valid Keys'
                                        : null,
                                onChange: (val) {
                                  // setState(() {
                                  //   email = val;
                                  // });
                                },
                                name: 'Token Wallet Keys',
                                hint: '    Wallet keys here',
                                iconData: Icons.vpn_key_outlined,
                              ),
                              TextFieldContainer(
                                validator: (val) =>
                                    val!.length <= 40 ? 'Enter Valid Keys' : null,
                                onChange: (val) {
                                  setState(() {
                                    walletKeys = val;
                                  });
                                },
                                name: 'Recieving Wallet Keys',
                                hint: '    Wallet keys here',
                                iconData: Icons.vpn_key,
                              ),

SizedBox(height: 30,),
                              AuthButton(
                                title: 'CONTINUE',
                                press: () async{
                                  if (_formKey.currentState!.validate()) {

                                    //  final String url = '';
                                    // var response = await http.post(Uri.parse(url), body: {'message':walletKeys});

                                    // print(response.body);
                                  }
                                },
                              ),

                              SizedBox(height: 15,),
                              CancelButton(),
                
            ],),
          ),
        ),
      ),),
    );
  }
}