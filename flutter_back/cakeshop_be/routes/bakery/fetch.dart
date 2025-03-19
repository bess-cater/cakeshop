import 'package:cakeshop_be/src/generated/prisma/prisma_client.dart';
import 'package:dart_frog/dart_frog.dart';




Future<Response> onRequest(RequestContext context) async {
  // TODO: implement route handler
  return switch (context.request.method) {
    HttpMethod.get => _getBakeries(),
    HttpMethod.put => _createBakery(context),
    _ => Future.value(Response(body: 'Hehehe!'))
  };
}


Future<Response> _getBakeries() async {
  final prisma = PrismaClient(
  datasources: const Datasources(
    db: 'mysql://root:vocal50tu!@localhost:3306/cakeshop',),);
  // print("eheheh");
  final bakeries = await prisma.bakery.findMany();
  // print("aaaaa");
  // print(bakeries);
  return Future.value(Response.json(
    body: bakeries.map((b) => b.toJson()).toList(),),);
    
}

Future<Response> _createBakery(RequestContext context) async {
  final jsonBody = (await context.request.json()) as Map<String, dynamic>;
  final bakeryName = jsonBody['bakery_name'] as String?;
  final address = jsonBody['address'] as String?;
  final description = jsonBody['description'] as String?;
  final open = jsonBody['open'] as int?;
  final close = jsonBody['close'] as int?;
  final url = jsonBody['url'] as String?;

  if(bakeryName==null || address==null){
    return Response(statusCode: 400, body: 'No data...');
  }
  
  final prisma = PrismaClient(
  datasources: const Datasources(
    db: 'mysql://root:vocal50tu!@localhost:3306/cakeshop',),);
  
  prisma.bakery.create(data: BakeryCreateInput(
    bakeryName: bakeryName, 
    address: address, 
    description: description, 
    open: open, 
    close: close, 
    url: url,),)
;
  print(bakeryName);
  return Response(statusCode: 201, body: 'Created!!');

}
