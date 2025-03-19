import 'package:dart_frog/dart_frog.dart';
import '../../lib/src/generated/prisma/prisma_client.dart';

Future<Response> onRequest(
  RequestContext context,
  // Extra value!!!
  String id,
) 
{
return switch (context.request.method) {
    HttpMethod.get => _getBakeryById(id),
    HttpMethod.delete => _deleteBakery(id),
    _ => Future.value(Response(body: 'Hehehe!'))
  };
}

Future<Response> _getBakeryById(String id) async {
  final prisma = PrismaClient(
  datasources: Datasources(
    db: "mysql://root:vocal50tu!@localhost:3306/cakeshop"));
  // print("eheheh");
  final bakery = await prisma.bakery.findUnique(
  where: BakeryWhereUniqueInput(bakeryId: int.parse(id)),
);
  if (bakery == null) {
  return Response.json(body: {'error': 'bakery not found'}, statusCode: 404);
}
  int bId = bakery.bakeryId;
  final filter = IntNullableFilter(equals: bId);
  final cakes = await prisma.cake.findMany(
  where: CakeWhereInput(bakeryId: filter),
);
  return Future.value(
    Response.json(
  body: {
    'bakery_id': bakery.bakeryId,
    'bakery_name': bakery.bakeryName,
    'address': bakery.address,
    'description': bakery.description,
    'open': bakery.open,
    'close': bakery.close,
    'url': bakery.url,
    'cakes': cakes.map((cake) => {
      'cake_id': cake.cakeId,
      'cake_name': cake.cakeName,
      'ingredients': cake.ingredients,
      'category': cake.cakeCategory,
      'url': cake.url
    }).toList(),
  },
  ));
}

Future<Response> _deleteBakery(String id){
  return Future.value(Response (body: 'Bakery with id $id was deleted :('));
}
