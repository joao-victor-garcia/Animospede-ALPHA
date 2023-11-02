import 'package:animospede/routes/index.dart';
import 'package:animospede/screens/create_service.dart';
import 'package:animospede/screens/divulgation.dart';
import 'package:animospede/screens/profile.dart';
import 'package:animospede/screens/service_details.dart';
import 'package:animospede/screens/services.dart';
import 'package:animospede/screens/services_advertising_list.dart';
import 'package:animospede/screens/services_request_list.dart';
import 'package:animospede/screens/solicitation.dart';
import 'package:animospede/widgets/custom_bottom_bar.dart';
import 'package:animospede/widgets/custom_card.dart';
import 'package:animospede/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animospede/core/app_export.dart';
import 'package:animospede/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

const Color searchBackground = Color(0xFFFAFAFA);

List<Widget> cardItems = [
  const CustomCard(
    id: 1,
    title: 'Belinha',
    subtitle: 'São José do Rio Preto',
    text: 'Busco passeador no Jardim Urano',
    imagePath: 'dogteste.png',
  ),
  const CustomCard(
    id: 1,
    title: 'Belinha',
    subtitle: 'São José do Rio Preto',
    text: 'Busco passeador no Jardim Urano',
    imagePath: 'dogteste.png',
  ),
  const CustomCard(
    id: 1,
    title: 'Belinha',
    subtitle: 'São José do Rio Preto',
    text: 'Busco passeador no Jardim Urano',
    imagePath: 'dogteste.png',
  ),
  const CustomCard(
    id: 1,
    title: 'Belinha',
    subtitle: 'São José do Rio Preto',
    text: 'Busco passeador no Jardim Urano',
    imagePath: 'dogteste.png',
  ),
];

Widget _buildHomeScreen(context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                color: searchBackground,
                width: 329,
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                    ),
                    hintText: 'Pesquisar',
                    hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.25)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt_outlined,
              ),
            ),
          ],
        ),
      ),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 5),
              child: const Text(
                'Serviços em sua região',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 150,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.92,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 10),
                  autoPlayAnimationDuration: const Duration(milliseconds: 300),
                  autoPlayCurve: Curves.easeInOut,
                ),
                items: cardItems,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 5),
                child: const Text(
                  'Seus serviços',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RequestList()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5FA),
                      borderRadius: BorderRadius.all(
                        Radius.circular(13.h),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.solicitation,
                          height: 170.v,
                          width: 137.h,
                          radius: BorderRadius.circular(13.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            top: 13.v,
                            bottom: 68.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "Solicitação",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              SizedBox(height: 26.v),
                              SizedBox(
                                width: 180.h,
                                child: Text(
                                  "Solicite um serviço para o seu Pet!",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .labelLargePoppinsGray800
                                      .copyWith(
                                    height: 1.67,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdvertiseList()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5FA),
                      borderRadius: BorderRadius.all(
                        Radius.circular(13.h),
                      ),
                    ),
                    margin: EdgeInsets.only(top: 48.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            top: 20.v,
                            bottom: 53.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Divulgação",
                                style: theme.textTheme.titleLarge,
                              ),
                              SizedBox(height: 31.v),
                              SizedBox(
                                width: 183.h,
                                child: Text(
                                  "Divulgue um serviço para atender os Pets de sua região!",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .labelLargePoppinsGray800
                                      .copyWith(height: 1.67),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.divulgation,
                          height: 170.v,
                          width: 137.h,
                          radius: BorderRadius.circular(13.h),
                          margin: EdgeInsets.only(left: 8.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.home,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) {
              return getCurrentPage(routeSetting.name!, context);
            },
            transitionDuration: const Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
              navigatorKey.currentContext!,
              getCurrentRoute(type),
            );
          },
        ),
      ),
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.home:
        return AppRoutes.home;
      case BottomBarEnum.servicos:
        return AppRoutes.services;
      case BottomBarEnum.perfil:
        return AppRoutes.profile;
      default:
        return AppRoutes.home;
    }
  }

  Widget getCurrentPage(String currentRoute, BuildContext context) {
    final routeParts = currentRoute.split('/');

    if (routeParts.length >= 3 && routeParts[1] == 'serviceDetails') {
      final serviceId = int.tryParse(routeParts[2]);

      if (serviceId == null) return const DefaultWidget();

      return ServiceDetails(serviceId: serviceId);
    }

    switch (currentRoute) {
      case AppRoutes.home:
        return _buildHomeScreen(context);
      case AppRoutes.services:
        return const Services();
      case AppRoutes.createService:
        return const CreateService();
      case AppRoutes.solicitation:
        return const Solicitation();
      case AppRoutes.divulgation:
        return const Divulgation();
      case AppRoutes.profile:
        return const Profile();
      default:
        return const DefaultWidget();
    }
  }
}
