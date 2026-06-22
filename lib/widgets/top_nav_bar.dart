import 'package:flutter/material.dart';
import '../models/service_item.dart';
import '../theme/app_theme.dart';

class TopNavBar extends StatefulWidget {
  const TopNavBar({super.key});

  @override
  State<TopNavBar> createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < kNavItems.length; i++) ...[
          if (i != 0) const SizedBox(width: 10),
          _NavPill(
            label: kNavItems[i],
            active: _selected == i,
            onTap: () => setState(() => _selected = i),
          ),
        ],
      ],
    );
  }
}

class _NavPill extends StatefulWidget {
  final String label;
  final bool active;
  final VoidCallback onTap;

  const _NavPill({
    required this.label,
    required this.active,
    required this.onTap,
  });

  @override
  State<_NavPill> createState() => _NavPillState();
}

class _NavPillState extends State<_NavPill> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final active = widget.active;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: active
                ? AppTheme.primaryRed
                : (_hovered ? const Color(0xFFFAFAFA) : Colors.white),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: active ? AppTheme.primaryRed : AppTheme.navInactiveBorder,
              width: 1,
            ),
            boxShadow: _hovered && !active
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          child: Text(
            widget.label,
            style: active ? AppTheme.navActive : AppTheme.navInactive,
          ),
        ),
      ),
    );
  }
}
