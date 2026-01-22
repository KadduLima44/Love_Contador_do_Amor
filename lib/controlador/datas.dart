//Data do primeiro encontro Ano, Mês, Dia
DateTime dataEncontro = DateTime(2024, 3, 10);

//Data do pedido de namoro Ano, Mês, Dia
DateTime dataNamoro = DateTime(2025, 6, 6);

//Data atual
DateTime dataAtual = DateTime.now();

//Tempo desde o primeiro encontro
int diasEncontro = DateTime.now().difference(dataEncontro).inDays.abs();

//Tempo de duração do namoro
int diasNamoro = DateTime.now().difference(dataNamoro).inDays.abs();

//Tempo em luas
int luas = (DateTime.now().difference(dataNamoro).inDays.abs() / 29.53).floor();
