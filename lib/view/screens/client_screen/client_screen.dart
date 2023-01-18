import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sunat_app/view/common_widgets/custom_form_field.dart';

class ClientScreen extends StatelessWidget {
  const ClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          CustomFormField(
            hintText: 'xd',
            errorText: 'Valió verga',
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                RegExp(r"[a-zA-Z]+|\s"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
