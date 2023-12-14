import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 70,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(20),
                  icon: const Icon(Icons.menu, color: Colors.transparent,),
                  value: selectedValue,
                  hint: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('SELECT SUPPLIER'),
                  ),
                  items: [
                    'All',
                    'AUDI',
                    'BMW',
                    'BYD',
                    'CUPRA',
                    'FORD',
                    'HAVAL',
                  ].map((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: InkWell(
                  onTap: (){},
                    child: const Icon(Icons.menu)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
