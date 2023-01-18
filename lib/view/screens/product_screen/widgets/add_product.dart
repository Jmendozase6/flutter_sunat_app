import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sunat_app/view/common_widgets/custom_form_field.dart';
import 'package:sunat_app/view_model/view_model.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();
  late SignUpFormProvider _productFormProvider;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SignUpFormProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: const [
              CustomFormField(hintText: 'hintText', errorText: 'errorText'),
              CustomFormField(hintText: 'hintText', errorText: 'errorText'),
            ],
          ),
        ),
      ),
    );
  }
}
