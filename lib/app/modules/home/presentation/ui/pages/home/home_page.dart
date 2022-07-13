import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final controller = Modular.get<HomeController>();

  @override
  void initState() {
    controller.getBatteryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter Test Application'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildBaterry(),
            const SizedBox(height: 20.0,),
            _buildButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBaterry(){
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              )),
        ),
        Container(
          height: 200,
          width: 120,
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Observer(
            builder: (context) {
              return Center(
                child: Text(
                  '${controller.batteryDataDto?.batteryData ?? ''} %',
                  style: const TextStyle(fontSize: 20),
                ),
              );
            }
          ),
        ),
      ],
    );
  }

  Widget _buildButton(){
    return TextButton(
        onPressed: ()async{
          await controller.getBatteryData();
        },
        child: const Text('Atualizar')
    );
  }
}
