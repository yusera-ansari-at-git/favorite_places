import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});
  @override
  State<ImageInput> createState() {
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  void _takePicture() async {
    final imagePicker = ImagePicker();
    final cameraImage =
        await imagePicker.pickImage(source: ImageSource.camera, maxWidth: 600);
    // final galleryImage =
    //     await imagePicker.pickImage(source: ImageSource.gallery, maxWidth: 600);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        ),
      ),
      height: 250,
      alignment: Alignment.center,
      width: double.infinity,
      child: TextButton.icon(
        icon: const Icon(Icons.camera),
        label: Text('Take picture'),
        onPressed: _takePicture,
      ),
    );
  }
}
