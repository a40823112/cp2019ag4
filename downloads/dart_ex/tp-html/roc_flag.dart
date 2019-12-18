import "dart:html";

CtoF(num c){
return c*9/5 + 32;
}

FtoC(num f){
return (f - 32)*5/9;
}

main() {
    InputElement tempInput = querySelector("#temp");
    querySelector("#submit").onClick.listen((e) => convert(tempInput.value));
}

convert(String data){
  int len;
  var type;
  var number;
  LabelElement output = querySelector("#output");
  len = data.length;
  type = data[len-1];
  number = data.substring(0, len-1);
  number = int.parse(number);
  if (type == "C" || type == "c"){
     output.innerHtml = "攝氏 $number 度 = 華氏
     ${CtoF(number).toStringAsFixed(2)} 度";
  } else if ((type == "F" || type == "f")){
     output.innerHtml = "華氏 $number 度 = 攝氏
     ${FtoC(number).toStringAsFixed(2)} 度";
  } else {
     output.innerHtml = "請輸入數字加上 C 或 F!";
  }
} 
