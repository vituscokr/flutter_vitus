import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_vitus/flutter_vitus.dart';
import 'package:flutter_vitus/util/strings.dart';

void main() {
  // test('adds one to input values', () {
  //   final calculator = Calculator();
  //   expect(calculator.addOne(2), 3);
  //   expect(calculator.addOne(-7), -6);
  //   expect(calculator.addOne(0), 1);
  // });

  test('strings', () {
    // //List<String> listString = [];
    // List<String>? listString = null;
    // final result = listString.map((e) => e.trim()).join(",");
    // //expect(result,"A,B,C");
    // //expect(result, null);
  });
  
  test("splitMapJoin", () {
    
   // List<InlineSpan> children = [];
    List<String> children = [];


    // final boldStyle =
    // final colorStyle =
    
    String str = "<c>abc</c>안녕하세요. <b>비투스</b>님";
    
    str.splitMapJoin(RegExp(r'<b>(.*?)<\/b>|<c>(.*?)<\/c>'),
    onMatch: (Match match) {
      if(match[0]!.startsWith(RegExp("<c>"))) {
        final text = StringUtil.removeAllHtmlTags(match[0]!);
        children.add("c:$text");
      }
      if(match[0]!.startsWith(RegExp("<b>"))) {
        final text = StringUtil.removeAllHtmlTags(match[0]!);
        children.add("b:$text");
      }
      return "";
    },
      onNonMatch: (String text) {
      children.add(text);
      return "";
      }
    );

    print(children);

  }); 
}
