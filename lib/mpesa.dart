import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Mpesa extends StatelessWidget {
  const Mpesa({super.key});

  @override
  Widget build(BuildContext context) {
    var code = '+254';
    var phone1 = '';

        TextEditingController phone = TextEditingController();
    
    return Scaffold(

      body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          
                        decoration:  BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow:[
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.5)
                              )
                            ]
                        ),
                        child: 
                        TextField(
          controller: phone,
          decoration: InputDecoration(
            prefixIcon: CountryCodePicker(
              initialSelection: 'KE', // Set 'KE' for Kenya
              onChanged: (value) {
                code = value.toString();
                phone1 = code + "" + phone.text;
                 print(phone1);
              },
              // Optional. Shows only country name and flag
              showFlag: true,
              // Optional. Shows only country name and code
              showCountryOnly: false,
              // Optional. Shows the country list as dropdown
              showDropDownButton: true,
              // Required for onChanged to work
            ),
          ),
           keyboardType: TextInputType.phone,
          onChanged: (value) {
            phone1 = "$code $value";
             print(phone1);
          },
          ),
          ),
      ),
        ),
    );
  }
}