import 'package:flutter/material.dart';
import 'package:original_climate/theme.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Climate Change'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: const <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices massa at pulvinar placerat. Sed dolor metus, auctor eget pharetra ac, volutpat nec lectus. Nam semper pretium turpis, non imperdiet mauris faucibus vel. Vivamus vitae facilisis eros, quis varius est. Nam dictum mauris diam, pharetra dignissim felis rhoncus vel. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam vel nisi sit amet orci tempor varius. Aliquam efficitur felis scelerisque porttitor facilisis. Nullam sodales posuere augue sed laoreet. Aenean vitae consectetur est.'),
                                  ])),
                              const Spacer(),
                              RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: const <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Vivamus euismod ante eu tortor dignissim, at convallis ipsum laoreet. Sed rutrum, tellus vitae pretium condimentum, nunc nisl mattis neque, in egestas purus erat at felis. Proin mollis laoreet ipsum, eu scelerisque dolor convallis a. Nullam ut massa dui. Fusce id elit consequat, sodales mauris ac, tincidunt felis. Vestibulum suscipit sapien et tellus dapibus accumsan. Integer molestie enim at nunc aliquet lacinia. Cras sit amet libero ut leo accumsan consequat sed id erat. Integer id erat id arcu molestie dapibus nec nec ante. Etiam mollis finibus iaculis. Quisque in nisi rutrum, interdum neque sed, rhoncus nisl.'),
                                    TextSpan(
                                        text:
                                            'Aliquam ornare risus vitae ex varius, non varius risus pellentesque. Donec posuere feugiat metus, eget ullamcorper lorem egestas vel. Donec at scelerisque dolor. Integer posuere varius enim, efficitur viverra orci varius quis. Pellentesque blandit elit ante, non pretium elit convallis ut. Etiam convallis sem vel orci blandit, at mattis ipsum imperdiet. Vivamus gravida arcu ut velit lobortis mattis. Mauris viverra pretium tortor at elementum. Nullam lacus tellus, accumsan in sodales in, egestas in neque. Cras vitae diam sed tellus ultricies sollicitudin a eu leo. Nam eget sollicitudin lorem, mattis malesuada magna. Sed neque nisi, rutrum vitae lorem id, mollis blandit odio. Sed ut tortor lacus. Praesent rutrum euismod massa vel sollicitudin. Donec sollicitudin venenatis felis. Nam vel odio eget lectus euismod interdum.'),
                                  ])),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Text('Climate Change'),
              style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold))),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Recycling'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: const <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices massa at pulvinar placerat. Sed dolor metus, auctor eget pharetra ac, volutpat nec lectus. Nam semper pretium turpis, non imperdiet mauris faucibus vel. Vivamus vitae facilisis eros, quis varius est. Nam dictum mauris diam, pharetra dignissim felis rhoncus vel. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam vel nisi sit amet orci tempor varius. Aliquam efficitur felis scelerisque porttitor facilisis. Nullam sodales posuere augue sed laoreet. Aenean vitae consectetur est.'),
                                  ])),
                              const Spacer(),
                              RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: const <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Vivamus euismod ante eu tortor dignissim, at convallis ipsum laoreet. Sed rutrum, tellus vitae pretium condimentum, nunc nisl mattis neque, in egestas purus erat at felis. Proin mollis laoreet ipsum, eu scelerisque dolor convallis a. Nullam ut massa dui. Fusce id elit consequat, sodales mauris ac, tincidunt felis. Vestibulum suscipit sapien et tellus dapibus accumsan. Integer molestie enim at nunc aliquet lacinia. Cras sit amet libero ut leo accumsan consequat sed id erat. Integer id erat id arcu molestie dapibus nec nec ante. Etiam mollis finibus iaculis. Quisque in nisi rutrum, interdum neque sed, rhoncus nisl.'),
                                    TextSpan(
                                        text:
                                            'Aliquam ornare risus vitae ex varius, non varius risus pellentesque. Donec posuere feugiat metus, eget ullamcorper lorem egestas vel. Donec at scelerisque dolor. Integer posuere varius enim, efficitur viverra orci varius quis. Pellentesque blandit elit ante, non pretium elit convallis ut. Etiam convallis sem vel orci blandit, at mattis ipsum imperdiet. Vivamus gravida arcu ut velit lobortis mattis. Mauris viverra pretium tortor at elementum. Nullam lacus tellus, accumsan in sodales in, egestas in neque. Cras vitae diam sed tellus ultricies sollicitudin a eu leo. Nam eget sollicitudin lorem, mattis malesuada magna. Sed neque nisi, rutrum vitae lorem id, mollis blandit odio. Sed ut tortor lacus. Praesent rutrum euismod massa vel sollicitudin. Donec sollicitudin venenatis felis. Nam vel odio eget lectus euismod interdum.'),
                                  ])),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Text('Recycling'),
              style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold))),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Transport'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: const <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices massa at pulvinar placerat. Sed dolor metus, auctor eget pharetra ac, volutpat nec lectus. Nam semper pretium turpis, non imperdiet mauris faucibus vel. Vivamus vitae facilisis eros, quis varius est. Nam dictum mauris diam, pharetra dignissim felis rhoncus vel. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam vel nisi sit amet orci tempor varius. Aliquam efficitur felis scelerisque porttitor facilisis. Nullam sodales posuere augue sed laoreet. Aenean vitae consectetur est.'),
                                  ])),
                              const Spacer(),
                              RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: const <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Vivamus euismod ante eu tortor dignissim, at convallis ipsum laoreet. Sed rutrum, tellus vitae pretium condimentum, nunc nisl mattis neque, in egestas purus erat at felis. Proin mollis laoreet ipsum, eu scelerisque dolor convallis a. Nullam ut massa dui. Fusce id elit consequat, sodales mauris ac, tincidunt felis. Vestibulum suscipit sapien et tellus dapibus accumsan. Integer molestie enim at nunc aliquet lacinia. Cras sit amet libero ut leo accumsan consequat sed id erat. Integer id erat id arcu molestie dapibus nec nec ante. Etiam mollis finibus iaculis. Quisque in nisi rutrum, interdum neque sed, rhoncus nisl.'),
                                    TextSpan(
                                        text:
                                            'Aliquam ornare risus vitae ex varius, non varius risus pellentesque. Donec posuere feugiat metus, eget ullamcorper lorem egestas vel. Donec at scelerisque dolor. Integer posuere varius enim, efficitur viverra orci varius quis. Pellentesque blandit elit ante, non pretium elit convallis ut. Etiam convallis sem vel orci blandit, at mattis ipsum imperdiet. Vivamus gravida arcu ut velit lobortis mattis. Mauris viverra pretium tortor at elementum. Nullam lacus tellus, accumsan in sodales in, egestas in neque. Cras vitae diam sed tellus ultricies sollicitudin a eu leo. Nam eget sollicitudin lorem, mattis malesuada magna. Sed neque nisi, rutrum vitae lorem id, mollis blandit odio. Sed ut tortor lacus. Praesent rutrum euismod massa vel sollicitudin. Donec sollicitudin venenatis felis. Nam vel odio eget lectus euismod interdum.'),
                                  ])),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Text('Transport'),
              style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold))),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Food Waste'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: const <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices massa at pulvinar placerat. Sed dolor metus, auctor eget pharetra ac, volutpat nec lectus. Nam semper pretium turpis, non imperdiet mauris faucibus vel. Vivamus vitae facilisis eros, quis varius est. Nam dictum mauris diam, pharetra dignissim felis rhoncus vel. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam vel nisi sit amet orci tempor varius. Aliquam efficitur felis scelerisque porttitor facilisis. Nullam sodales posuere augue sed laoreet. Aenean vitae consectetur est.'),
                                  ])),
                              const Spacer(),
                              RichText(
                                  text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: const <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Vivamus euismod ante eu tortor dignissim, at convallis ipsum laoreet. Sed rutrum, tellus vitae pretium condimentum, nunc nisl mattis neque, in egestas purus erat at felis. Proin mollis laoreet ipsum, eu scelerisque dolor convallis a. Nullam ut massa dui. Fusce id elit consequat, sodales mauris ac, tincidunt felis. Vestibulum suscipit sapien et tellus dapibus accumsan. Integer molestie enim at nunc aliquet lacinia. Cras sit amet libero ut leo accumsan consequat sed id erat. Integer id erat id arcu molestie dapibus nec nec ante. Etiam mollis finibus iaculis. Quisque in nisi rutrum, interdum neque sed, rhoncus nisl.'),
                                    TextSpan(
                                        text:
                                            'Aliquam ornare risus vitae ex varius, non varius risus pellentesque. Donec posuere feugiat metus, eget ullamcorper lorem egestas vel. Donec at scelerisque dolor. Integer posuere varius enim, efficitur viverra orci varius quis. Pellentesque blandit elit ante, non pretium elit convallis ut. Etiam convallis sem vel orci blandit, at mattis ipsum imperdiet. Vivamus gravida arcu ut velit lobortis mattis. Mauris viverra pretium tortor at elementum. Nullam lacus tellus, accumsan in sodales in, egestas in neque. Cras vitae diam sed tellus ultricies sollicitudin a eu leo. Nam eget sollicitudin lorem, mattis malesuada magna. Sed neque nisi, rutrum vitae lorem id, mollis blandit odio. Sed ut tortor lacus. Praesent rutrum euismod massa vel sollicitudin. Donec sollicitudin venenatis felis. Nam vel odio eget lectus euismod interdum.'),
                                  ])),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Text('Food Waste'),
              style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold))),
        ],
      ),
    ));
  }
}

// class Info extends StatefulWidget {
//

//   @override
//   _InfoState createState() => _InfoState();
// }

// class _InfoState extends State<Info> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//   backgroundColor: Color(0xFF222222),
//   body: Column(
//   children: <Widget>[
//     SizedBox(height: 20),
//     Row(
//       // crossAxisAlignment: CrossAxisAlignment.stretch,//throws error
//       children: <Widget>[
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Container(
//                 color: Colors.red,
//                 child: Text('Left', textAlign: TextAlign.center),
//               ),
//             ],
//           ),
//         )
//   }
// }
