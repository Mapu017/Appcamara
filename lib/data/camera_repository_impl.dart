import 'package:camera/camera.dart';
import 'package:gallery_saver_plus/gallery_saver_plus.dart';
import '../../domain/camera_repository.dart';

class CameraRepositoryImpl implements CameraRepository {
  @override
  Future<String?> takePicture() async {
    try {
      // 1. Obtener cámaras disponibles
      final cameras = await availableCameras();

      // 2. Inicializar cámara
      final cameraController = CameraController(
          cameras[0],
          ResolutionPreset.medium
      );
      await cameraController.initialize();

      // 3. Tomar foto
      final photo = await cameraController.takePicture();

      // 4. Guardar en galería
      await GallerySaver.saveImage(photo.path);


      // 5. Liberar cámara
      await cameraController.dispose();

      return photo.path;

    } catch (error) {
      print('Error tomando foto: $error');
      return null;
    }
  }
}