import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_ui/views/widgets/custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Icon(FontAwesomeIcons.solidHeart, size: 32)),
          CustomDrawerItem(drawerItemModel: null),
        ],
      ),
    );
  }
}
