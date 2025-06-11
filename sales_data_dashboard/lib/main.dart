import 'package:flutter/material.dart';
import 'package:sales_data_dashboard/Utils/app_sizer.dart';
import 'theme.dart';
import 'widgets/sidebar.dart';
import 'widgets/dashboard_content.dart';

void main() {
  runApp(const InvoiceDashboardApp());
}

class InvoiceDashboardApp extends StatelessWidget {
  const InvoiceDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invoice Dashboard',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Scaffold(
        backgroundColor: const Color(0xFFEFF3F6),
        body: Row(
          children: [
            const Sidebar(),
            SizedBox(
              width: 8.dp,
            ),
            const Expanded(
              child: DashboardContent(),
            ),
          ],
        ),
      ),
    );
  }
}
