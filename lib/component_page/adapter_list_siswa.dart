import 'package:flutter/material.dart';
import 'package:latihan11pplg2_2024/model/model_siswa.dart';
import 'package:latihan11pplg2_2024/widgets/my_text.dart';

class AdapterListSiswa extends StatelessWidget {
  final ModelSiswa modelSiswa;

  const AdapterListSiswa({super.key, required this.modelSiswa});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: MyText(
          image: modelSiswa.image,
          nama: modelSiswa.nama,
          alamat: modelSiswa.alamat,
          marginLeft: 20,
          widthImage: 50),
    );
  }
}
