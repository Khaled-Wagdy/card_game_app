import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPrimary;
  final String? iconPath;
  final bool isOutlined;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isPrimary = true,
    this.iconPath,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isOutlined
              ? Colors.transparent
              : (isPrimary ? const Color(0xFF7B1FA2) : Colors.transparent),

          elevation: (isPrimary && !isOutlined) ? 2 : 0,

          side: isOutlined
              ? const BorderSide(color: Color(0xFFBA68C8), width: 1)
              : BorderSide.none,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPath != null) ...[
              Image.asset(iconPath!, height: 24),
              const SizedBox(width: 12),
            ],
            Text(
              text,
              style: TextStyle(
                color: isOutlined || !isPrimary
                    ? const Color(0xFF7B1FA2)
                    : Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
