import 'package:animospede/core/app_export.dart';
import 'package:animospede/widgets/app_bar/appbar_iconbutton.dart';
import 'package:animospede/widgets/app_bar/appbar_image.dart';
import 'package:animospede/widgets/app_bar/custom_app_bar.dart';
import 'package:animospede/widgets/custom_elevated_button.dart';
import 'package:animospede/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

Widget _buildConfigListPage() {
  return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/config_screen_profile_icon.png'),
              Text('Minha conta'),
              Icon(Icons.arrow_forward)
            ],
          )
        ],
      ));
}

class ConfigList extends StatelessWidget {
  const ConfigList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildConfigListPage();
  }
}
