import 'package:flutter/material.dart';

import 'kThemeData.dart';

class CustomInput{

    buildInput(title, icon){
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(title),
                const SizedBox(height: 2),
                TextField(
                    decoration: InputDecoration(
                        hintText: "Click to type here",
                        prefixIcon: Icon(icon, size: 20, color: priceColor),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: priceColor,
                                width: 1
                            ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: priceColor,
                                width: 1
                            ),
                        ),
                    )
                ),
                const SizedBox(height: 15)
            ]
        );
    }

    DropdownButtonFormField buildDropdown(selectedValue, values, onChanged) {
        return DropdownButtonFormField(
            value: selectedValue,
            items: buildDropdownMenuItems(values),
            onChanged: onChanged,
        );
    }

    List<DropdownMenuItem> buildDropdownMenuItems(List values) {
        return values.map((value) => DropdownMenuItem(
            value: value,
            child: Text(value.toString()),
        )).toList();
    }

    Widget buildOTPTextField(int index, BuildContext context) {
        return Container(
            width: 50.0,
            height: 50.0,
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            decoration: getBoxDecoration(context).copyWith(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0)
            ),
            child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    hintText: "-",
                ),
                onChanged: (value) {
                    if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                    }
                },
            ),
        );
    }
}
