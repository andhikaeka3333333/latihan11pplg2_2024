import 'package:flutter/material.dart';
import 'package:latihan11pplg2_2024/component_page/adapter_list_siswa.dart';

import 'model/model_siswa.dart';

class ListSiswaPplg2 extends StatefulWidget {
  const ListSiswaPplg2({super.key});

  @override
  State<ListSiswaPplg2> createState() => _ListSiswaPplg2State();
}

class _ListSiswaPplg2State extends State<ListSiswaPplg2> {
  List<ModelSiswa> dataSiswa = [
    ModelSiswa("Adli", "Semarang", "images/male.png"),
    ModelSiswa("Alvian", "Jogja", "images/male.png"),
    ModelSiswa("Andhika", "Kudus", "images/male.png"),
    ModelSiswa("Pirlo", "Kudus", "images/male.png"),
    ModelSiswa("Aurel", "Batam", "images/female.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("List Data Siswa 11 PPLG 2"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: dataSiswa.length,
            itemBuilder: (context, index) {
              return AdapterListSiswa(modelSiswa: dataSiswa[index]);
            }),
      ),
    );
  }
}
