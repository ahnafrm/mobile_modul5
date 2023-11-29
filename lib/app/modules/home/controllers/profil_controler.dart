import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  var selectedImage = Rx<XFile?>(null);

  Future<void> pickImageFromGallery() async {
    final XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    selectedImage.value = pickedFile;
  }

  Future<void> pickImageFromCamera() async {
    final XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    selectedImage.value = pickedFile;
  }
}
