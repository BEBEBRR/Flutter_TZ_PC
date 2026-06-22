import 'package:flutter/material.dart';

class HexagonServiceCard extends StatefulWidget {
  final String iconPath;
  final String title;
  final VoidCallback onTap;
  final Function(bool)? onHover;

  const HexagonServiceCard({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.onTap,
    this.onHover,
  }) : super(key: key);

  @override
  State<HexagonServiceCard> createState() => _HexagonServiceCardState();
}

class _HexagonServiceCardState extends State<HexagonServiceCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() => isHovered = true);
        if (widget.onHover != null) widget.onHover!(true);
      },
      onExit: (_) {
        setState(() => isHovered = false);
        if (widget.onHover != null) widget.onHover!(false);
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedScale(
          scale: isHovered ? 1.05 : 1.0,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          child: Container(
            width: 250,
            height: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(isHovered
                    ? 'assets/hex_active.png'
                    : 'assets/hex_default.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.iconPath,
                  height: 85,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                      height: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
