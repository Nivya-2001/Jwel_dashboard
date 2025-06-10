import 'package:flutter/material.dart';
import '../theme.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 30),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
            title: const Text("Onky Soerya N."),
            subtitle: const Text("Admin Manager"),
          ),
          const Divider(),
          _sidebarItem(Icons.dashboard, "Dashboard"),
          _sidebarItem(Icons.receipt_long, "Invoices"),
          _sidebarItem(Icons.payment, "Payment Setup"),
          _sidebarItem(Icons.settings, "Settings"),
        ],
      ),
    );
  }

  Widget _sidebarItem(IconData icon, String label) {
    return ListTile(
      leading: Icon(icon, color: AppColors.grey),
      title: Text(label),
      hoverColor: AppColors.primary.withOpacity(0.1),
    );
  }
}
