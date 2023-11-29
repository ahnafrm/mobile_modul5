import 'package:appwrite/appwrite.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ClientController extends GetxController {
  Client client = Client();

  @override
  void onInit() {
    super.onInit();

    //appwrite
    const endPoint = "https://cloud.appwrite.io/v1";
    const projectID = "6565d2b30653fbe24e3b";
    client
        .setEndpoint(endPoint)
        .setProject(projectID)
        .setSelfSigned(status: true);
  }
}
