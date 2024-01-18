import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_app/app/modules/home/controllers/home_controller.dart';
import 'package:peminjam_perpustakaan_app/app/routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () => Get.toNamed(Routes.BOOK),
                child: const Text("List Buku")),
            ElevatedButton(onPressed: () => Get.toNamed(Routes.PEMINJAMAN),
                child: const Text("List Pinjam"))
          ],
        ),
      ),
    );
  }
}