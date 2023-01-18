import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sunat_app/core/constants/colors.dart';
import 'package:sunat_app/view/router/app_router.dart';
import 'package:sunat_app/view/screens/screens.dart';

import '../../../data/data_providers/google_sign_in_provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        title: Text(user?.email ?? 'x'),
        actions: [
          IconButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const SignInScreen()),
                    (route) => false);
              },
              icon: const Icon(FontAwesomeIcons.rightFromBracket))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
          child: ListView.separated(
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return const CustomListTileItem(
                  name: 'Nombre del producto', code: 'CODPRO', price: '30.20');
            },
            separatorBuilder: (_, __) => const Divider(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.plus),
        onPressed: () {
          Navigator.pushNamed(context, AppRouter.addProduct);
        },
      ),
    );
  }
}

class CustomListTileItem extends StatelessWidget {
  const CustomListTileItem({
    Key? key,
    required this.name,
    required this.code,
    required this.price,
  }) : super(key: key);

  final String name, code, price;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20), topRight: Radius.circular(20))),
      tileColor: fillColor,
      trailing: const Icon(FontAwesomeIcons.boxesPacking),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(name),
              SizedBox(width: 20.w),
              Text(code),
            ],
          ),
          Text('S./ $price'),
        ],
      ),
      style: ListTileStyle.drawer,
    );
  }
}
