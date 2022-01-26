import 'package:flutter/material.dart';
import 'package:original_climate/theme.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/climate_change.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: const Text(
              'CLIMATE CHANGE',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: primaryColor),
            child: Column(
              children: const [
                Text(
                  'Climate change is a consequence of the greenhouse effect and occurs when the heat from the sun gets trapped within the Earth’s atmosphere due to high levels of CO2 and other gases. When these gases trap the heat, the temperature of the planet starts to rise. Therefore, it is known as the greenhouse effect because the gas trapping the heat is acting like a greenhouse.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/co2-emissions.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: primaryColor),
            child: Column(
              children: const [
                Text(
                  'The level of CO2 being produced by the planet up until the industrial revolution was manageable. But after this period when humans started burning more and more fossil fuels such as oil and coal to power their homes, cars and factories, the levels in CO2 began rising dramatically and there was more CO2 being produced than could be handled. CO2 is naturally stored in forests, swamps, and other natural areas. These natural areas have stopped the atmosphere filling up with this gas and trapping heat in the planet but with deforestation there is not enough trees to hold the amount of CO2 being produced. Deforestation is cutting down trees to clear land for agricultural reasons or to use the wood for fuel, manufacturing or for construction according to National Geographic Society. While CO2 is the biggest factor, there are other contributing factors that also play a role in climate change. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/Earth-melting.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: const Text(
              'CONSEQUENCES',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: primaryColor),
            child: Column(
              children: const [
                Text(
                  'Before the industrial revolution the Earth was about 1 degree cooler than it is now, and this might not sound like a lot but a small change in temperature can have a dramatic change on climate. If global warming reaches 2 degrees, there would be severe impacts on people and on nature. This rise in temperatures would leave a third of the world’s population exposed to severe heat which would lead to heat related health problems. This temperature rise would also destroy almost all warm water coral reefs and would melt the ice sheet in both Greenland and Antarctica. This rise in sea levels would have devastating effects causing destructive erosion, destroying agricultural soil with salt and lost habitat for plants and animals. Higher sea levels also bring more dangerous weather conditions such as more hurricanes and typhoons that bring more rain leading to more powerful storm surges. If temperatures stay below 1.5 degrees, there would still be serious problems for all of us, but they would be less severe. There would be lower risks of flooding and lower dangers to economic growth and species at risk of going extinct. There would be less threats to human health from air pollution, disease, and extreme heat. From this it is clear that every fraction of a degree matters, and we all need to work together now if we ever want a chance to keep from these devastating effects happening.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/global-warming.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: const Text(
              'SOLUTION',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: primaryColor),
            child: Column(
              children: const [
                Text(
                  'Now that we are coming out of the pandemic, we have a chance to rebuild our society greener. This could be one of the only good things to come from a horrible thing that happened to all of us so shouldn’t we use it. I want to create an application to attempt to change people’s behavior to make everyone a bit less wasteful. This application will focus on three main areas. The first is to make people aware of what is going on today and what could happen if action is not taken. So, in the application I want to have a place that people can look to for information about various topics that surround climate change. Showing people what is happening, the consequences of our actions and how we can change will get people to start to change the way they do things, even if it’s a small change, it’s a start. The second area I want to focus on is traveling. If we have somewhere we need to be the first thing that needs to be looked at is how far is it and is there other means of transport that could be taken there. I will do this by adding a travel section to the application where the user would enter their destination and be shown how long it would take to get there walking, cycling or from taking the bus. These options are far more environmentally friendly than taking a car. The final area I want to focus on in my application is reducing waste. To do this I will ask the user for information that can be found on their household bills at the end of every month. On your bill for your bin collection, they show how much food was wasted, how much you recycled and how much was thrown away. On your electricity bill, it shows how much CO2 was produced to power your house. Using all this information, I want to first show the areas that could do better, and then I want to create a points system where they will be given points depending on how well they had done during the month. This will add gamification to the application and users can compete to do better than each other every month. If they did not do too well on their monthly points, they can earn some extra points by performing certain actions like planting a tree or maybe buying a reusable cup if you buy a lot of coffee. Where the user will gain most of their points from their monthly breakdown, they can gain a lot over the month by doing something that is good for the environment. Adding this competition to the application will drive people to try harder and keep climate change in mind in their day to day and that is what will really have a strong effect.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
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
//Center (
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: <Widget>[
        //       ElevatedButton(
        //           onPressed: () {
        //             showDialog(
        //                 context: context,
        //                 builder: (BuildContext context) {
        //                   return AlertDialog(
        //                     title: const Text('Climate Change'),
        //                     content: SingleChildScrollView(
        //                       child: ListBody(
        //                         children: <Widget>[
        //                           RichText(
        //                               text: TextSpan(
        //                                   style: DefaultTextStyle.of(context).style,
        //                                   children: const <TextSpan>[
        //                                 TextSpan(
        //                                     text:
        //                                         'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices massa at pulvinar placerat. Sed dolor metus, auctor eget pharetra ac, volutpat nec lectus. Nam semper pretium turpis, non imperdiet mauris faucibus vel. Vivamus vitae facilisis eros, quis varius est. Nam dictum mauris diam, pharetra dignissim felis rhoncus vel. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam vel nisi sit amet orci tempor varius. Aliquam efficitur felis scelerisque porttitor facilisis. Nullam sodales posuere augue sed laoreet. Aenean vitae consectetur est.'),
        //                               ])),
        //                           const Spacer(),
        //                           RichText(
        //                               text: TextSpan(
        //                                   style: DefaultTextStyle.of(context).style,
        //                                   children: const <TextSpan>[
        //                                 TextSpan(
        //                                     text:
        //                                         'Vivamus euismod ante eu tortor dignissim, at convallis ipsum laoreet. Sed rutrum, tellus vitae pretium condimentum, nunc nisl mattis neque, in egestas purus erat at felis. Proin mollis laoreet ipsum, eu scelerisque dolor convallis a. Nullam ut massa dui. Fusce id elit consequat, sodales mauris ac, tincidunt felis. Vestibulum suscipit sapien et tellus dapibus accumsan. Integer molestie enim at nunc aliquet lacinia. Cras sit amet libero ut leo accumsan consequat sed id erat. Integer id erat id arcu molestie dapibus nec nec ante. Etiam mollis finibus iaculis. Quisque in nisi rutrum, interdum neque sed, rhoncus nisl.'),
        //                                 TextSpan(
        //                                     text:
        //                                         'Aliquam ornare risus vitae ex varius, non varius risus pellentesque. Donec posuere feugiat metus, eget ullamcorper lorem egestas vel. Donec at scelerisque dolor. Integer posuere varius enim, efficitur viverra orci varius quis. Pellentesque blandit elit ante, non pretium elit convallis ut. Etiam convallis sem vel orci blandit, at mattis ipsum imperdiet. Vivamus gravida arcu ut velit lobortis mattis. Mauris viverra pretium tortor at elementum. Nullam lacus tellus, accumsan in sodales in, egestas in neque. Cras vitae diam sed tellus ultricies sollicitudin a eu leo. Nam eget sollicitudin lorem, mattis malesuada magna. Sed neque nisi, rutrum vitae lorem id, mollis blandit odio. Sed ut tortor lacus. Praesent rutrum euismod massa vel sollicitudin. Donec sollicitudin venenatis felis. Nam vel odio eget lectus euismod interdum.'),
        //                               ])),
        //                         ],
        //                       ),
        //                     ),
        //                   );
        //                 });
        //           },
        //           child: const Text('Climate Change'),
        //           style: ElevatedButton.styleFrom(
        //               primary: primaryColor,
        //               padding:
        //                   const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        //               textStyle: const TextStyle(
        //                   fontSize: 30, fontWeight: FontWeight.bold))),
        //       ElevatedButton(
        //           onPressed: () {
        //             showDialog(
        //                 context: context,
        //                 builder: (BuildContext context) {
        //                   return AlertDialog(
        //                     title: const Text('Recycling'),
        //                     content: SingleChildScrollView(
        //                       child: ListBody(
        //                         children: <Widget>[
        //                           RichText(
        //                               text: TextSpan(
        //                                   style: DefaultTextStyle.of(context).style,
        //                                   children: const <TextSpan>[
        //                                 TextSpan(
        //                                     text:
        //                                         'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices massa at pulvinar placerat. Sed dolor metus, auctor eget pharetra ac, volutpat nec lectus. Nam semper pretium turpis, non imperdiet mauris faucibus vel. Vivamus vitae facilisis eros, quis varius est. Nam dictum mauris diam, pharetra dignissim felis rhoncus vel. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam vel nisi sit amet orci tempor varius. Aliquam efficitur felis scelerisque porttitor facilisis. Nullam sodales posuere augue sed laoreet. Aenean vitae consectetur est.'),
        //                               ])),
        //                           const Spacer(),
        //                           RichText(
        //                               text: TextSpan(
        //                                   style: DefaultTextStyle.of(context).style,
        //                                   children: const <TextSpan>[
        //                                 TextSpan(
        //                                     text:
        //                                         'Vivamus euismod ante eu tortor dignissim, at convallis ipsum laoreet. Sed rutrum, tellus vitae pretium condimentum, nunc nisl mattis neque, in egestas purus erat at felis. Proin mollis laoreet ipsum, eu scelerisque dolor convallis a. Nullam ut massa dui. Fusce id elit consequat, sodales mauris ac, tincidunt felis. Vestibulum suscipit sapien et tellus dapibus accumsan. Integer molestie enim at nunc aliquet lacinia. Cras sit amet libero ut leo accumsan consequat sed id erat. Integer id erat id arcu molestie dapibus nec nec ante. Etiam mollis finibus iaculis. Quisque in nisi rutrum, interdum neque sed, rhoncus nisl.'),
        //                                 TextSpan(
        //                                     text:
        //                                         'Aliquam ornare risus vitae ex varius, non varius risus pellentesque. Donec posuere feugiat metus, eget ullamcorper lorem egestas vel. Donec at scelerisque dolor. Integer posuere varius enim, efficitur viverra orci varius quis. Pellentesque blandit elit ante, non pretium elit convallis ut. Etiam convallis sem vel orci blandit, at mattis ipsum imperdiet. Vivamus gravida arcu ut velit lobortis mattis. Mauris viverra pretium tortor at elementum. Nullam lacus tellus, accumsan in sodales in, egestas in neque. Cras vitae diam sed tellus ultricies sollicitudin a eu leo. Nam eget sollicitudin lorem, mattis malesuada magna. Sed neque nisi, rutrum vitae lorem id, mollis blandit odio. Sed ut tortor lacus. Praesent rutrum euismod massa vel sollicitudin. Donec sollicitudin venenatis felis. Nam vel odio eget lectus euismod interdum.'),
        //                               ])),
        //                         ],
        //                       ),
        //                     ),
        //                   );
        //                 });
        //           },
        //           child: const Text('Recycling'),
        //           style: ElevatedButton.styleFrom(
        //               primary: primaryColor,
        //               padding:
        //                   const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        //               textStyle: const TextStyle(
        //                   fontSize: 30, fontWeight: FontWeight.bold))),
        //       ElevatedButton(
        //           onPressed: () {
        //             showDialog(
        //                 context: context,
        //                 builder: (BuildContext context) {
        //                   return AlertDialog(
        //                     title: const Text('Transport'),
        //                     content: SingleChildScrollView(
        //                       child: ListBody(
        //                         children: <Widget>[
        //                           RichText(
        //                               text: TextSpan(
        //                                   style: DefaultTextStyle.of(context).style,
        //                                   children: const <TextSpan>[
        //                                 TextSpan(
        //                                     text:
        //                                         'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices massa at pulvinar placerat. Sed dolor metus, auctor eget pharetra ac, volutpat nec lectus. Nam semper pretium turpis, non imperdiet mauris faucibus vel. Vivamus vitae facilisis eros, quis varius est. Nam dictum mauris diam, pharetra dignissim felis rhoncus vel. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam vel nisi sit amet orci tempor varius. Aliquam efficitur felis scelerisque porttitor facilisis. Nullam sodales posuere augue sed laoreet. Aenean vitae consectetur est.'),
        //                               ])),
        //                           const Spacer(),
        //                           RichText(
        //                               text: TextSpan(
        //                                   style: DefaultTextStyle.of(context).style,
        //                                   children: const <TextSpan>[
        //                                 TextSpan(
        //                                     text:
        //                                         'Vivamus euismod ante eu tortor dignissim, at convallis ipsum laoreet. Sed rutrum, tellus vitae pretium condimentum, nunc nisl mattis neque, in egestas purus erat at felis. Proin mollis laoreet ipsum, eu scelerisque dolor convallis a. Nullam ut massa dui. Fusce id elit consequat, sodales mauris ac, tincidunt felis. Vestibulum suscipit sapien et tellus dapibus accumsan. Integer molestie enim at nunc aliquet lacinia. Cras sit amet libero ut leo accumsan consequat sed id erat. Integer id erat id arcu molestie dapibus nec nec ante. Etiam mollis finibus iaculis. Quisque in nisi rutrum, interdum neque sed, rhoncus nisl.'),
        //                                 TextSpan(
        //                                     text:
        //                                         'Aliquam ornare risus vitae ex varius, non varius risus pellentesque. Donec posuere feugiat metus, eget ullamcorper lorem egestas vel. Donec at scelerisque dolor. Integer posuere varius enim, efficitur viverra orci varius quis. Pellentesque blandit elit ante, non pretium elit convallis ut. Etiam convallis sem vel orci blandit, at mattis ipsum imperdiet. Vivamus gravida arcu ut velit lobortis mattis. Mauris viverra pretium tortor at elementum. Nullam lacus tellus, accumsan in sodales in, egestas in neque. Cras vitae diam sed tellus ultricies sollicitudin a eu leo. Nam eget sollicitudin lorem, mattis malesuada magna. Sed neque nisi, rutrum vitae lorem id, mollis blandit odio. Sed ut tortor lacus. Praesent rutrum euismod massa vel sollicitudin. Donec sollicitudin venenatis felis. Nam vel odio eget lectus euismod interdum.'),
        //                               ])),
        //                         ],
        //                       ),
        //                     ),
        //                   );
        //                 });
        //           },
        //           child: const Text('Transport'),
        //           style: ElevatedButton.styleFrom(
        //               primary: primaryColor,
        //               padding:
        //                   const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        //               textStyle: const TextStyle(
        //                   fontSize: 30, fontWeight: FontWeight.bold))),
        //       ElevatedButton(
        //           onPressed: () {
        //             showDialog(
        //                 context: context,
        //                 builder: (BuildContext context) {
        //                   return AlertDialog(
        //                     title: const Text('Food Waste'),
        //                     content: SingleChildScrollView(
        //                       child: ListBody(
        //                         children: <Widget>[
        //                           RichText(
        //                               text: TextSpan(
        //                                   style: DefaultTextStyle.of(context).style,
        //                                   children: const <TextSpan>[
        //                                 TextSpan(
        //                                     text:
        //                                         'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices massa at pulvinar placerat. Sed dolor metus, auctor eget pharetra ac, volutpat nec lectus. Nam semper pretium turpis, non imperdiet mauris faucibus vel. Vivamus vitae facilisis eros, quis varius est. Nam dictum mauris diam, pharetra dignissim felis rhoncus vel. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam vel nisi sit amet orci tempor varius. Aliquam efficitur felis scelerisque porttitor facilisis. Nullam sodales posuere augue sed laoreet. Aenean vitae consectetur est.'),
        //                               ])),
        //                           const Spacer(),
        //                           RichText(
        //                               text: TextSpan(
        //                                   style: DefaultTextStyle.of(context).style,
        //                                   children: const <TextSpan>[
        //                                 TextSpan(
        //                                     text:
        //                                         'Vivamus euismod ante eu tortor dignissim, at convallis ipsum laoreet. Sed rutrum, tellus vitae pretium condimentum, nunc nisl mattis neque, in egestas purus erat at felis. Proin mollis laoreet ipsum, eu scelerisque dolor convallis a. Nullam ut massa dui. Fusce id elit consequat, sodales mauris ac, tincidunt felis. Vestibulum suscipit sapien et tellus dapibus accumsan. Integer molestie enim at nunc aliquet lacinia. Cras sit amet libero ut leo accumsan consequat sed id erat. Integer id erat id arcu molestie dapibus nec nec ante. Etiam mollis finibus iaculis. Quisque in nisi rutrum, interdum neque sed, rhoncus nisl.'),
        //                                 TextSpan(
        //                                     text:
        //                                         'Aliquam ornare risus vitae ex varius, non varius risus pellentesque. Donec posuere feugiat metus, eget ullamcorper lorem egestas vel. Donec at scelerisque dolor. Integer posuere varius enim, efficitur viverra orci varius quis. Pellentesque blandit elit ante, non pretium elit convallis ut. Etiam convallis sem vel orci blandit, at mattis ipsum imperdiet. Vivamus gravida arcu ut velit lobortis mattis. Mauris viverra pretium tortor at elementum. Nullam lacus tellus, accumsan in sodales in, egestas in neque. Cras vitae diam sed tellus ultricies sollicitudin a eu leo. Nam eget sollicitudin lorem, mattis malesuada magna. Sed neque nisi, rutrum vitae lorem id, mollis blandit odio. Sed ut tortor lacus. Praesent rutrum euismod massa vel sollicitudin. Donec sollicitudin venenatis felis. Nam vel odio eget lectus euismod interdum.'),
        //                               ])),
        //                         ],
        //                       ),
        //                     ),
        //                   );
        //                 });
        //           },
        //           child: const Text('Food Waste'),
        //           style: ElevatedButton.styleFrom(
        //               primary: primaryColor,
        //               padding:
        //                   const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        //               textStyle: const TextStyle(
        //                   fontSize: 30, fontWeight: FontWeight.bold))),
        //     ],
        //   ),
        // )