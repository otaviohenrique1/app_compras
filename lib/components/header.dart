import 'package:flutter/material.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  const Header({
    super.key,
    required this.titulo,
  });

  final String titulo;

  @override
  State<Header> createState() => _HeaderState();

  @override
  Size get preferredSize {
    return const Size.fromHeight(50);
  }
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Row(
        children: [
          const Icon(Icons.shopping_cart),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(widget.titulo),
          ),
        ],
      ),
    );
  }
}
