import 'package:flutter/material.dart';


import 'package:token_converter/common.dart';



class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key, required this.name, required this.hint, required this.onChange, required this.iconData, required this.validator,
  }) : super(key: key);

  final String name,hint;
  final IconData iconData;
  final ValueChanged onChange;
  final FormFieldValidator validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(name,style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.w600,fontSize: 16,color: Colors.grey[400]),),
          ),
 Container(decoration: BoxDecoration(color: Colors.white,border: Border.all(color: primaryColor,width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),),
              child: TextFormField(
             
                validator: validator,
                 
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(iconData,color:Color(0xffb1a6ca),),
                hintText: hint,
                hintStyle: TextStyle(fontSize: 14),
              
              ),
              onChanged:onChange,
              ),
          ),
        ],
      ),
    );
  }
}



class AuthButton extends StatelessWidget {
  final String title;
  final VoidCallback press;

  const AuthButton({Key? key, required this.title, required this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(primaryColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    )),
          ),
          child: Text(title,
              style: TextStyle(
                  color: Colors.white,letterSpacing: 1,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold)),
          onPressed: press),
    );
  }
}


class CancelButton extends StatelessWidget {

  const CancelButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    )),
          ),
          child: Text('CANCEL',
              style: TextStyle(
                  color: Colors.white,letterSpacing: 1,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold)),
          onPressed: (){
            notifyUser('!!!!', 'Init Cancel: 101');
          }),
    );
  }
}