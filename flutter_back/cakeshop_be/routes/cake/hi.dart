import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  // context.request.headers...
  if(context.request.method==HttpMethod.get){
    return Response(body: 'Hi, you!!');
  }
  return Response(body: "Heeey, it's not get... You lost?");
}

