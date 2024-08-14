import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  List<DropdownMenuItem<Object>>? _items = [
    DropdownMenuItem(
      child: Text(
        'Tea & Snacks',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Amount',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Amount Controller Box

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: GoogleFonts.poppins(
                fontSize: 54,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                prefix: Text('\$ '),
                prefixStyle: GoogleFonts.poppins(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                ),
                label: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Text(
                    'Amount',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade400,
                      fontSize: 28,
                    ),
                  ),
                ),
                suffix: Text('USD'),
                suffixStyle: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          // Expense Selector
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButton(
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              hint: Text(
                'Expenses Made for',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
              iconSize: 50,
              icon: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              isExpanded: true,
              items: _items,
              onChanged: (value) {},
            ),
          ),
          // Description Selector
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                label: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4.0,
                  ),
                  child: Text('Description'),
                ),
                labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade600,
                  fontSize: 28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
