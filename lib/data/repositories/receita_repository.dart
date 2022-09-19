import 'package:dartz/dartz.dart';
import 'package:dicume/core/failures/failures.dart';
import 'package:dicume/domain/entities/receita.dart';

class ReceitaRepository {
  List<Receita> receitas = [
    Receita(
        "1",
        "Mousse de Caju",
        "Delicioso e refrescante!",
        "https://s2.glbimg.com/wxrwT0Vwg6KLAFSv0uPuQIvDrCY=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2022/r/U/pRdqsQQrOXEghQAyIthQ/mousse-caju.jpg",
        4.8,
        100),
    Receita("2", "Doce de Buriti", "Fácil de fazer e muito delicioso!",
        "https://i.ytimg.com/vi/27l96KRlbK0/maxresdefault.jpg", 5.0, 50),
    Receita(
        "3",
        "Bolo de Macaxeira vegano e sem glúten",
        "Muito bom e delicioso!",
        "https://claudia.abril.com.br/wp-content/uploads/2020/02/receita-bolo-aipim-21.jpg",
        4.5,
        150),
    Receita(
        "4",
        "Cajuína",
        "Refrescante e gostoso",
        "https://piauihoje.com/migration/public_html/media/image_bank/2017/7/cajuina.jpg",
        4.5,
        150)
  ];

  Future<Either<Failure, List<Receita>>> all() async {
    await Future.delayed(const Duration(seconds: 3));
    return right(receitas);
  }

  Future<Either<Failure, Receita?>> get(String id) async {
    await Future.delayed(const Duration(seconds: 3));
    for (Receita r in receitas) {
      if (r.id == id) {
        return right(r);
      }
    }
    return right(null);
  }
}
