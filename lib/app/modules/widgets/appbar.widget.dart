import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(String appName) {
  _searchButton() =>
      IconButton(onPressed: () {}, icon: const Icon(Icons.search));

  return AppBar(
    actions: [
      _searchButton(),
    ],
    title: Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
            border: UnderlineInputBorder(), hintText: 'Search Crypto'),
      ),
    ),
  );
}
