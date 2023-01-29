import 'package:kabutor/packages.dart';

class BottomnavigationController extends GetxController{
  var currentIndex=0.obs;

  void changeIndex(int index){
    currentIndex=index.obs;
  }
}