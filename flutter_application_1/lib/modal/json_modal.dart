class JsonModal {
  String? response;
  JsonModal({this.response});
  factory JsonModal.mapToModal(Map m) {
    return JsonModal(response: m['response']);
  }
}

// {
//    "ok": true,
//    "text": "Hello World!",
//    "from": "auto",
//    "to": "hi",
//    "response": "हैलो वर्ल्ड!"
//}