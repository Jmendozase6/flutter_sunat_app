import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:sunat_app/core/constants/colors.dart';
import 'package:sunat_app/view/common_widgets/custom_input_field.dart';
import 'package:sunat_app/view/styles/text_styles.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();

  final nombre = TextEditingController();
  final codigo = TextEditingController();
  final unidad = TextEditingController();
  final descripcion = TextEditingController();
  final valorUnitario = TextEditingController();
  final precioFinal = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agrega un nuevo producto'),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: REdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomInputField(hintText: 'Nombre', controller: nombre),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Expanded(
                          child: CustomInputField(
                        hintText: 'Código',
                        controller: codigo,
                      )),
                      SizedBox(width: 20.w),
                      Expanded(
                          child: CustomInputField(
                        hintText: 'Unidad',
                        controller: unidad,
                      )),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  CustomInputField(
                    hintText: 'Descripción',
                    controller: descripcion,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Expanded(
                          child: CustomInputField(
                        keyboardType: TextInputType.number,
                        hintText: 'Valor unitario',
                        controller: valorUnitario,
                      )),
                      SizedBox(width: 20.w),
                      Expanded(
                          child: CustomInputField(
                        keyboardType: TextInputType.number,
                        hintText: 'Precio final',
                        controller: precioFinal,
                      )),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 0.8.sw,
                    child: SlideAction(
                      borderRadius: 15,
                      onSubmit: () async {
                        print(nombre.text);
                        print(codigo.text);
                        print(unidad.text);
                        print(descripcion.text);
                        print(valorUnitario.text);
                        print(precioFinal.text);
                        if (!mounted) return;
                        Navigator.pop(context);
                      },
                      text: 'Agregar Producto',
                      elevation: 0,
                      outerColor: primaryColor,
                      textStyle: TextStyles.headline7(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AlertDialogCustom extends StatelessWidget {
  const AlertDialogCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Éxito'),
      content: const Text('Se agregó el producto correctamente'),
      actions: [
        TextButton(
          child: const Text('Continuar'),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
