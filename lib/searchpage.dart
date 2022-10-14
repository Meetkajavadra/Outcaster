import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child:  Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children:[
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SearchTextField(
                  fieldValue: (String value) {
                    setState(() {
                    });
                  },
                ),
              ),
              Row(
                children: [
                  Image.asset('assets/images/belt.jpg',
                      height: 105, width: 100),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Adiddas Belt",
                          style:
                          TextStyle(fontSize: 19, color: Colors.black)),
                      SizedBox(height: 7),
                      Text("Rs. 1500",
                          style:
                          TextStyle(fontSize: 14, color: Colors.grey)),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.plus_circle,
                    size: 30,
                  )
                ],
              ),
              Divider(
                indent: 5,
                endIndent: 5,
                thickness: 1,
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
                  Icon(
                    CupertinoIcons.plus_circle,
                    size: 30,
                  )
                ],
              ),
              Divider(
                indent: 5,
                endIndent: 5,
                thickness: 1,
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
                  Icon(
                    CupertinoIcons.plus_circle,
                    size: 30,
                  )
                ],
              ),
              Divider(
                indent: 5,
                endIndent: 5,
                thickness: 1,
              ),
              Row(
                children: [
                  Image.asset('assets/images/stella.jpg',
                      height: 105, width: 100),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sun Glasses",
                          style:
                          TextStyle(fontSize: 19, color: Colors.black)),
                      SizedBox(height: 7),
                      Text("Rs. 500",
                          style:
                          TextStyle(fontSize: 14, color: Colors.grey)),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.plus_circle,
                    size: 30,
                  )
                ],
              ),
            ],
          ),
        ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.fieldValue,
  });

  final ValueChanged<String> fieldValue;

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onChanged: (String value) {
        fieldValue('The text has changed to: $value');
      },
      onSubmitted: (String value) {
        fieldValue('Submitted text: $value');
      },
    );
  }
}

