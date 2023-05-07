



// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
const DecorationTextfild =InputDecoration(
 
  
  fillColor: Colors.white,
                 
                  // To delete borders
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 247, 243, 243),
                    ),
                  ),
                  
                  filled: true,
                  contentPadding: EdgeInsets.all(8),
                );