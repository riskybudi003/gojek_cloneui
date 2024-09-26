import 'package:flutter/material.dart';

import 'package:gojeks/components/akses.dart';
import 'package:gojeks/components/goclub.dart';
import 'package:gojeks/components/gopay.dart';
import 'package:gojeks/components/menus.dart';
import 'package:gojeks/components/news.dart';
import 'package:gojeks/components/search.dart';

import 'package:gojeks/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: green1, borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: Text(
                  'Beranda',
                  style: semibold14.copyWith(color: green1),
                ),
              ),
              ...['Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Center(
                        child: Text(
                          title,
                          style: semibold14.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Seacrh
            Search(),
            // Gopay
            Gopay(),
            // Menu Icon
            Menus(),
            // GoClub
            Goclub(),
            // Akses Cepat
            Akses(),
            // GopayLater
            News(),
          ],
        ),
      ),
    );
  }
}
