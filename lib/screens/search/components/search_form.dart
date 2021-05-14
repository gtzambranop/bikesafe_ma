import 'package:flutter/material.dart';
import 'package:bikesafe_mobile/widgets/tatiana/constants.dart';
import 'package:bikesafe_mobile/widgets/tatiana/form_error.dart';

class SearchForm extends StatefulWidget {
  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  final _formKey = GlobalKey<FormState>();
  String code;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  static bool isValidCode(String code) {
    print(code);
    bool codeValid = RegExp(r"^[0-9]{3}$").hasMatch(code);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          userCodeFormField(),
          SizedBox(height: 10),
          FormError(errors: errors),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  TextFormField userCodeFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => code = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: emptyUserCode);
        } else if (isValidCode(value)) {
          removeError(error: invalidUserCode);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: emptyUserCode);
          return "";
        } else if (isValidCode(value)) {
          addError(error: invalidUserCode);
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Code",
        hintText: "Enter the user code",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          icon: Icon(
            Icons.search,
          ),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              _formKey.currentState.save();
            }
          },
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
