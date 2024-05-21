class SebhaImages{
  String? path;
  void selectImage(int index){
    if(index == 1) path = 'assets/images/selectedSebiha.png';
    else path = 'assets/images/tasbihpng.png';
  }
  String getPath(int index){
    selectImage(index);
    return this.path!;
  }
}