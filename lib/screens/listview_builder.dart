import 'package:flutter/material.dart';
import 'package:flutter_components_test/theme/app_theme.dart';

class ListviewBuilderScreen extends StatefulWidget {
   
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {

  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent ) {
        fecthData();
      }
    });
    
  }

  Future fecthData() async { 
    
    if(isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration( seconds: 3) );
    
    add10();

    isLoading = false;
    setState(() {});

    if((scrollController.position.pixels + 100) <= scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels + 120, 
      duration: const Duration(milliseconds: 500), 
      curve: Curves.easeInOutBack
    );

  }

  Future onRefresh() async { 

    await Future.delayed(const Duration( seconds: 2) );
    
    final last = imagesIds.last;
    imagesIds.clear();

    imagesIds.add(last);

    add10();

  }

  void add10() {

    final lastId = imagesIds.last;

    imagesIds.addAll(
      [1,2,3,4,5,6,7,8,9,10].map((e) => e + lastId)
    );

    setState(() {});

  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar:  AppBar(
      //   title: const Center(
      //     child: Text('InfiniteScrol & Pull to refresh'),
      //   ),
      //   actions: [
      //     Container(
      //       margin: const EdgeInsets.only( right: 5),
      //       child: CircleAvatar(
      //         backgroundColor: Colors.purple[900],
      //         foregroundColor: Colors.white,
      //         child: const Text('AC'),
      //       ),
      //     )
      //   ],     
      // ),
      body: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        removeTop: true,
        child: Stack(
          children: [

            RefreshIndicator.adaptive(
              onRefresh: onRefresh,
              child: ListView.builder(
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'), 
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}')
                  );
                },
              ),
            ),

            if(isLoading)
            Positioned(
              bottom: 40,
              left: size.width * 0.5 - 30,
              child: const LoadingIcon()
            ),

          ],
        ),
      ),
    );
  }
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle
      ),
      child: const CircularProgressIndicator( color: AppTheme.primary,),
    );
  }
}