import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: const Color(0xFFFFE5D9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Navigate',
            style: TextStyle(
              fontFamily: 'Actor-Regular',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          _buildFooterLink('Home'),
          _buildFooterLink('Snacks'),
          _buildFooterLink('Subscription'),
          _buildFooterLink('About Us'),
          const SizedBox(height: 20),
          const Text(
            'Contact Us',
            style: TextStyle(
              fontFamily: 'Actor-Regular',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          _buildContactInfo('Location: 123 Flavors Street, Colombo, Sri Lanka'),
          _buildContactInfo('Call Us: +077077890'),
          _buildContactInfo('Email: hello@tastebites.com'),
          const SizedBox(height: 20),
          const Text(
            '© 2024 Taste Bites. All Rights Reserved.',
            style: TextStyle(
              fontFamily: 'Actor-Regular',
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Actor-Regular',
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildContactInfo(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Actor-Regular',
          fontSize: 14,
        ),
      ),
    );
  }
}