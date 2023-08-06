import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  final TextEditingController totalbillController;
  final TextEditingController tipController;
  final TextEditingController peopleController;
  final GlobalKey<FormState> formKey;

  homePage({
    required this.totalbillController,
    required this.tipController,
    required this.peopleController,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Total bill',
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          controller: totalbillController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter total bill';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: "Please enter total bill",
            hintStyle: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.w400),
            suffixIcon: Icon(
              Icons.attach_money,
              color: Colors.black87,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(5)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
       
       
        SizedBox(height: 5),
        Text(
          'Tip percentage',
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          controller: tipController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter Tip percentage';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: "Please enter Tip percentage",
            hintStyle: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.w400),
            suffixIcon: Icon(
              Icons.percent,
              color: Colors.black87,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(5)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
        
        
        SizedBox(height: 5),
        Text(
          'Number of people',
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          controller: peopleController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter Number of people';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: "Please enter Number of people",
            hintStyle: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.w400),
            suffixIcon: Icon(
              Icons.person,
              color: Colors.black87,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(5)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ],
    );
  }
}
