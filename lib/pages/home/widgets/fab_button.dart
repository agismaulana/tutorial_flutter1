

import 'package:flutter/material.dart';

Widget buttonFab() => FloatingActionButton(
  onPressed: () {
    debugPrint("Floating action Button");
  },
  backgroundColor: Colors.white,
  child: const Icon(
    Icons.list_alt,
    color: Colors.blue,
  ),
);