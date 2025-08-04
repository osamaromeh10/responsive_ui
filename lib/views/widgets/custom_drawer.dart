import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_ui/models/drawer_item_model.dart';
import 'package:responsive_ui/views/widgets/custom_drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: "DASHBOARD", icon: Icons.home),
    DrawerItemModel(title: "SETTING", icon: Icons.settings),
    DrawerItemModel(title: "ABOut", icon: Icons.info),
    DrawerItemModel(title: "Logout", icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffB4B4B4),
      elevation: 0.0,
      child: Column(
        children: [
          DrawerHeader(child: Icon(FontAwesomeIcons.solidHeart, size: 32)),
          CustomDrawerItemsListView(items: items),
        ],
      ),
    );
  }
}
