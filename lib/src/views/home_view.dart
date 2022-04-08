import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner_app/src/view_models/scan_view_model.dart';
import 'package:scanner_app/src/views/qr_code_scanner_view.dart';
import 'package:scanner_app/src/views/qr_code_view.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
{
  @override
  Widget build(BuildContext context)
  {

    var sVM = context.watch<ScanVM>();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                  minWidth: MediaQuery.of(context).size.width,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.cyan,
                      height: MediaQuery.of(context).size.height * 0.75,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(sVM.scanText),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QRScannerView(),
                          ),
                        );
                      },
                      child: Text('Scanner'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QrCodeView(),
                          ),
                        );
                      },
                      child: Text('Scanner 01'),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
