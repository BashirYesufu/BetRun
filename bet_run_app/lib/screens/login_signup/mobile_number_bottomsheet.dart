import 'package:bet_run_app/reuseables/components.dart';
import 'package:bet_run_app/reuseables/constants.dart';
import 'package:bet_run_app/screens/login_signup/code_verification_bottomsheet.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileNumberBottomSheet extends StatelessWidget {
  const MobileNumberBottomSheet({Key? key}) : super(key: key);

  Widget _buildDropdownItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(
            width: 8.0,
          ),
          Text("+${country.phoneCode}(${country.isoCode})"),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      height: (MediaQuery.of(context).size.height) * 0.7,
      decoration: kRoundBottomSheet,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  TitleText(
                    text: 'What is your Mobile \nNumber?',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: CountryPickerDropdown(
                        initialValue: 'NG',
                        itemBuilder: _buildDropdownItem,
                        sortComparator: (Country a, Country b) =>
                            a.isoCode.compareTo(b.isoCode),
                        onValuePicked: (Country country) {
                          print("${country.name}");
                          print("${country.phoneCode}");
                        },
                      ),
                      suffixIcon: Icon(Icons.close),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: kGreen,
                        ),
                      ),
                      hintText: 'Mobile Number',
                      hintStyle: TextStyle(
                        fontSize: 17,
                        fontFamily: 'AvenirNext',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              // Spacer(),
              GreenButton(
                buttonText: 'Continue',
                onTap: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    context: context,
                    builder: (context) => CodeVerificationBottomsheet(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
