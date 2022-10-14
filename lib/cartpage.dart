import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  DateTime? _chosenDateTime;

  void _showDatePicker(context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
              alignment: Alignment.center,
              height: 300,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: CupertinoDatePicker(
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (val) {
                          setState(() {
                            _chosenDateTime = val;
                          });
                        }),
                  ),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Shopping Cart'),
          ),
          SliverFillRemaining(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.person,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Name",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Divider(
                    indent: 5,
                    endIndent: 5,
                    thickness: 1,
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.mail_solid,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Divider(
                    indent: 5,
                    endIndent: 5,
                    thickness: 1,
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.location,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "Location",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Divider(
                    indent: 5,
                    endIndent: 5,
                    thickness: 1,
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.time,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "Delivery Time",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        '${_chosenDateTime?.month}/${_chosenDateTime?.day}/${_chosenDateTime?.year} ${_chosenDateTime?.hour}:${_chosenDateTime?.minute} AM',
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 6),
                  CupertinoButton(
                    padding: EdgeInsetsDirectional.zero,
                    child: const Text('Show Picker'),
                    onPressed: () => _showDatePicker(context),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/keyring.jpg',
                          height: 105, width: 100),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mag Safe",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black)),
                          SizedBox(height: 7),
                          Text("Rs. 5000",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Text("Rs. 5000",
                          style: TextStyle(fontSize: 18, color: Colors.black)),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/earrings.jpg',
                          height: 105, width: 100),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ear rings",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black)),
                          SizedBox(height: 7),
                          Text("Rs. 12000",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Text("Rs. 12000",
                          style: TextStyle(fontSize: 18, color: Colors.black)),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Shipping  Rs. 80",style: TextStyle(fontSize: 14,color: Colors.grey),),
                          SizedBox(height: 3),
                          Text("Tax  Rs. 2000",style: TextStyle(fontSize: 14,color: Colors.grey),),
                          SizedBox(height: 5),
                          Text("Total  Rs. 19080",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
