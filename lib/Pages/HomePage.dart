import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../providers/auth_providers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(":f"),
      ),

      drawer: Drawer(
        backgroundColor: Color.fromRGBO(45, 64, 89, 1),
        child: Consumer<AuthProvider>(
            builder: (context, authProvider, child) => ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                      " Welcome ${authProvider.user!.username!}"
                          .toUpperCase(),
                      style: TextStyle(color: Colors.black)),
                  accountEmail: Text(""),

                ),
              ],
            )),
      ),

    );
  }
}
