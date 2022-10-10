import 'dart:io';

import 'package:cryptoprice/app/modules/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

PreferredSizeWidget customAppBar(String appName) {
  final HomeController _controller = Get.put(HomeController());

  void _refreshPage() {
    _controller.changeBottomBarIndex(1);
    sleep(const Duration(seconds: 0));
    _controller.changeBottomBarIndex(0);
  }

  _searchButton() => IconButton(
      onPressed: () {
        _refreshPage();
      },
      icon: const Icon(Icons.search));

  return _controller.bottomBarTabIndex.value < 1
      ? AppBar(
          actions: [_searchButton()],
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: _controller.searchBar,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Search Crypto'),
                ),
              ),
            ],
          ),
        )
      : AppBar(
          centerTitle: true,
          title: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text('My favorite coins'),
          ),
        );
}
