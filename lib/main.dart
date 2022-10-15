import 'package:flutter/material.dart';
import 'package:kkiapay_flutter_sdk/kkiapay/view/widget_builder_view.dart';
import 'package:kkiapay_flutter_sdk/utils/kkiapayConf.sample.dart';

import 'SuccessScreen.dart';
import 'const.dart';

void main() { runApp( const App()); }

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff222F5A),
          title: const Text('Kkiapay Sample'),
          centerTitle: true,
        ),
        body: KkiapaySample(),
      ),
    );
  }
}

class KkiapaySample extends StatelessWidget {
  const KkiapaySample({
    Key? key,
  }) : super(key: key);
/*

  void successCallback(response, context) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SuccessScreen(
              amount: response['requestData']['amount'],
              transactionId: response['transactionId']
          )),
    );
  }
*/


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              minWidth: 500.0,
              height: 100.0,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xff222F5A)),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: const Text(
                  'Pay Now',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {

                 /* final kkiapay = KKiaPay(
                      amount: 100,
                      countries: ["BJ"],
                      phone: "22961000000",
                      name: "John Doe",
                      email: "email@mail.com",
                      reason: 'transaction reason',
                      data: 'Fake data',
                      sandbox: true,
                      apikey: myKey,
                      callback: successCallback,
                      theme: "#222F5A",
                      partnerId: 'AxXxXXxId',
                      paymentMethods: ["momo","card"]
                  );
*/
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => kkiapay),
                  );*/

                },
              ),
            )
          ],
        )
    );
  }
}