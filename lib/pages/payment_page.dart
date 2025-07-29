import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery_app_w_backend/components/my_button.dart';
import 'package:food_delivery_app_w_backend/pages/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  // Function to handle payment button tap
  void userTappedpay() {
    if (formKey.currentState!.validate()) {
      // only show dialoge if the form is valid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('confirm payment'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Card Number: $cardNumber'),
                Text('Expiry Date: $expiryDate'),
                Text('Card Holder Name: $cardHolderName'),
                Text('CVV Code: $cvvCode'),
              ],
            ),
          ),
          //cancel button
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),

            //yes button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeliveryProgressPage(),
                  ),
                );
              },
              child: const Text('Yes'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Checkout'),
      ),
      body: Column(
        children: [
          //credit card payment
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0) {},
          ),

          //credit card form
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (data) {
              setState(() {
                cardNumber = data.cardNumber;
                expiryDate = data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
                isCvvFocused = data.isCvvFocused;
              });
            },
            formKey: formKey,
          ),
          //button to pay
          const Spacer(),
          MyButton(onTap: userTappedpay, text: "Pay Now"),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
