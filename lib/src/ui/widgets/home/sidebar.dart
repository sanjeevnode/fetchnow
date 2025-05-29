import 'package:fetchnow/src/src.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: AppSize(context).height(100) - 40,
      decoration: const BoxDecoration(
        color: AppColors.slate1,
        border: Border(
          right: BorderSide(
            color: AppColors.slate,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
