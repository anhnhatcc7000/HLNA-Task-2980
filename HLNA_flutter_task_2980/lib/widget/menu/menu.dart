import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String selectedItem = 'Home';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF0A8ED9),
          borderRadius: BorderRadius.all(
            Radius.circular(0)
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.only(right: 100),
          children: <Widget>[
            const SizedBox(height: 150,),
            _createDrawerItem(
              icon: Icons.house,
              text: 'Home',
              isSelected: selectedItem == 'Home',
              context: context,
              onTap: () {
                setState(() {
                  selectedItem = 'Home';
                });
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.person_outlined,
              text: 'Profile',
              isSelected: selectedItem == 'Profile',
              context: context,
              onTap: () {
                setState(() {
                  selectedItem = 'Profile';
                });
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.location_on_outlined,
              text: 'Nearby',
              isSelected: selectedItem == 'Nearby',
              context: context,
              onTap: () {
                setState(() {
                  selectedItem = 'Nearby';
                });
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.white.withOpacity(0.5)),
            _createDrawerItem(
              icon: Icons.bookmark_border,
              text: 'Bookmark',
              isSelected: selectedItem == 'Bookmark',
              context: context,
              onTap: () {
                setState(() {
                  selectedItem = 'Bookmark';
                });
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.notifications_none_outlined,
              text: 'Notification',
              isSelected: selectedItem == 'Notification',
              context: context,
              onTap: () {
                setState(() {
                  selectedItem = 'Notification';
                });
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: FontAwesomeIcons.comment,
              text: 'Message',
              isSelected: selectedItem == 'Message',
              context: context,
              onTap: () {
                setState(() {
                  selectedItem = 'Message';
                });
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.white.withOpacity(0.5)),
            _createDrawerItem(
              icon: Icons.settings_outlined,
              text: 'Setting',
              isSelected: selectedItem == 'Setting',
              context: context,
              onTap: () {
                setState(() {
                  selectedItem = 'Setting';
                });
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.help_outline,
              text: 'Help',
              isSelected: selectedItem == 'Help',
              context: context,
              onTap: () {
                setState(() {
                  selectedItem = 'Help';
                });
                Navigator.pop(context);
              },
            ),
            _createDrawerItem(
              icon: Icons.power_settings_new_sharp,
              text: 'Logout',
              isSelected: selectedItem == 'Logout',
              context: context,
              onTap: () {
                setState(() {
                  selectedItem = 'Logout';
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _createDrawerItem({
    IconData? icon,
    FaIcon? faIcon,
    required String text,
    required bool isSelected,
    required BuildContext context,
    required Function onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        decoration: isSelected
            ? const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                color: Colors.white,
                shadows: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0, 0),
                    blurRadius: 20,
                    spreadRadius: -10,
                  ),
                ],
              )
            : null,
        child: ListTile(
          leading: icon != null 
              ? Icon(icon, size: 17, color: isSelected ? const Color(0xFF0A8ED9) : Colors.white)
              : FaIcon(faIcon!.icon, size: 17, color: isSelected ? const Color(0xFF0A8ED9) : Colors.white),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: isSelected ? const Color(0xFF0A8ED9) : Colors.white,
            ),
          ),
          selected: isSelected,
          onTap: () => onTap(),
        ),
      ),
    );
  }
}
