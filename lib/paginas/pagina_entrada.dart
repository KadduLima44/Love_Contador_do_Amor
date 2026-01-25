import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:love_contador_do_amor/controlador/datas.dart';
import 'package:love_contador_do_amor/temas.dart';

class PaginaEntrada extends StatefulWidget {
  const PaginaEntrada({super.key});

  @override
  State<PaginaEntrada> createState() => _PaginaEntradaState();
}

class Verso {
  final String original;
  final String traducao;
  final Duration inicio;
  final Duration fim;

  Verso({
    required this.original,
    required this.traducao,
    required this.inicio,
    required this.fim,
  });
}

enum ConteudoAtual {
  contadores,
  musica,
  descricaoMusica,
  descricaoApp,
}

class _PaginaEntradaState extends State<PaginaEntrada> {
  ConteudoAtual conteudoAtual = ConteudoAtual.contadores;

  void _avancarConteudo() {
  setState(() {
    conteudoAtual =
        ConteudoAtual.values[(conteudoAtual.index + 1) % ConteudoAtual.values.length];
  });
}

void _controlarAudioAoTrocar() {
  if (conteudoAtual != ConteudoAtual.musica && tocando) {
    _player.pause();
    tocando = false;
  }
}


  final AudioPlayer _player = AudioPlayer();
  bool tocando = false;

  Verso? versoAtual;

  final List<String> imagens = [
    'ativos/imagens/001.jpg',
    'ativos/imagens/002.jpg',
    'ativos/imagens/003.jpg',
    'ativos/imagens/004.jpg',
    'ativos/imagens/005.jpg',
    'ativos/imagens/006.jpg',
    'ativos/imagens/007.jpg',
    'ativos/imagens/008.jpg',
    'ativos/imagens/009.jpg',
    'ativos/imagens/010.jpg',
  ];

  final List<Verso> versos = [
  Verso(
    original: "Stardust",
    traducao: "Poeira estelar",
    inicio: Duration(milliseconds: 10010),
    fim: Duration(milliseconds: 12480),
  ),
  Verso(
    original: "In you and in me",
    traducao: "Em você e em mim",
    inicio: Duration(milliseconds: 12490),
    fim: Duration(milliseconds: 14900),
  ),
  Verso(
    original: "Fuse us",
    traducao: "Nos fundiu",
    inicio: Duration(milliseconds: 14910),
    fim: Duration(milliseconds: 17380),
  ),
  Verso(
    original: "Into unity",
    traducao: "Em unidade",
    inicio: Duration(milliseconds: 17390),
    fim: Duration(milliseconds: 19760),
  ),
  Verso(
    original: "Primeval",
    traducao: "Primitivo",
    inicio: Duration(milliseconds: 19770),
    fim: Duration(milliseconds: 22100),
  ),
  Verso(
    original: "We're coupled",
    traducao: "Estamos acoplados",
    inicio: Duration(milliseconds: 22110),
    fim: Duration(milliseconds: 23980),
  ),
  Verso(
    original: "Born from the universe",
    traducao: "Nascido a partir do universo",
    inicio: Duration(milliseconds: 23990),
    fim: Duration(milliseconds: 29200),
  ),
  Verso(
    original: "♪",
    traducao: "",
    inicio: Duration(milliseconds: 23990),
    fim: Duration(milliseconds: 29200),
  ),
  Verso(
    original: "Farewell",
    traducao: "Adeus",
    inicio: Duration(milliseconds: 29210),
    fim: Duration(milliseconds: 30820),
  ),
  Verso(
    original: "(The void) is calling",
    traducao: "O vazio está chamando",
    inicio: Duration(milliseconds: 30830),
    fim: Duration(milliseconds: 34110),
  ),
  Verso(
    original: "Don't fear",
    traducao: "Não tenha medo",
    inicio: Duration(milliseconds: 34120),
    fim: Duration(milliseconds: 36490),
  ),
  Verso(
    original: "For futures and dreams",
    traducao: "Para futuros e sonhos",
    inicio: Duration(milliseconds: 36500),
    fim: Duration(milliseconds: 38960),
  ),
  Verso(
    original: "They're fleeting, retreating",
    traducao: "Eles estão correndo, recuando",
    inicio: Duration(milliseconds: 38970),
    fim: Duration(milliseconds: 42870),
  ),
  Verso(
    original: "It's ok, I promise",
    traducao: "Está tudo bem, Eu prometo",
    inicio: Duration(milliseconds: 42880),
    fim: Duration(milliseconds: 47650),
  ),
  Verso(
    original: "♪",
    traducao: "",
    inicio: Duration(milliseconds: 47660),
    fim: Duration(milliseconds: 47710),
  ),
  Verso(
    original: "I don't know what to say",
    traducao: "Eu não sei o que dizer",
    inicio: Duration(milliseconds: 47720),
    fim: Duration(milliseconds: 50600),
  ),
  Verso(
    original: "But I'm going to want you till the stars evaporate",
    traducao: "Mas eu vou te querer até as estrelas evaporarem",
    inicio: Duration(milliseconds: 50610),
    fim: Duration(milliseconds: 55420),
  ),
  Verso(
    original: "We're only here for just a moment in the light",
    traducao: "Estamos aqui na luz por apenas um momento",
    inicio: Duration(milliseconds: 55430),
    fim: Duration(milliseconds: 60010),
  ),
  Verso(
    original: "One day it shines for us the next we're in the night",
    traducao: "Um dia ela brilha por nós, no próximo estamos na noite",
    inicio: Duration(milliseconds: 60020),
    fim: Duration(milliseconds: 64970),
  ),
  Verso(
    original: "So say the word and I'll be running back to find you",
    traducao: "Então diga a palavra e eu voltarei correndo para encontrá-la",
    inicio: Duration(milliseconds: 64980),
    fim: Duration(milliseconds: 70450),
  ),
  Verso(
    original: "A thousand armies won't stop me I'll break through",
    traducao: "Mil exércitos não me impedirão, eu vou atravessá-los",
    inicio: Duration(milliseconds: 70460),
    fim: Duration(milliseconds: 75180),
  ),
  Verso(
    original: "I'll soar the endless skies for only one sight Of your starlight",
    traducao: "Eu irei para os mundos sem fim para uma única visão De sua luz estelar",
    inicio: Duration(milliseconds: 75190),
    fim: Duration(milliseconds: 86360),
  ),
  Verso(
    original: "♪",
    traducao: "",
    inicio: Duration(milliseconds: 86370),
    fim: Duration(milliseconds: 96540),
  ),
  Verso(
    original: "Tell me",
    traducao: "Diga me",
    inicio: Duration(milliseconds: 96550),
    fim: Duration(milliseconds: 98880),
  ),
  Verso(
    original: "Just tell me to stay",
    traducao: "Apenas diga me para ficar",
    inicio: Duration(milliseconds: 98890),
    fim: Duration(milliseconds: 101330),
  ),
  Verso(
    original: "I'll turn",
    traducao: "Vou me virar",
    inicio: Duration(milliseconds: 101340),
    fim: Duration(milliseconds: 103730),
  ),
  Verso(
    original: "I won't look away",
    traducao: "Não vou desviar o olhar",
    inicio: Duration(milliseconds: 103740),
    fim: Duration(milliseconds: 106170),
  ),
  Verso(
    original: "I'll stay here",
    traducao: "Vou ficar aqui",
    inicio: Duration(milliseconds: 103740),
    fim: Duration(milliseconds: 108530),
  ),
  Verso(
    original: "I'll never go but you don't feel the same",
    traducao: "Eu nunca vou, mas você não sente o mesmo",
    inicio: Duration(milliseconds: 108540),
    fim: Duration(milliseconds: 115630),
  ),
  Verso(
    original: "♪",
    traducao: "",
    inicio: Duration(milliseconds: 115640),
    fim: Duration(milliseconds: 115740),
  ),
  Verso(
    original: "Farewell",
    traducao: "Adeus",
    inicio: Duration(milliseconds: 115750),
    fim: Duration(milliseconds: 118140),
  ),
  Verso(
    original: "Farewell and godspeed",
    traducao: "Adeus e boa sorte",
    inicio: Duration(milliseconds: 118150),
    fim: Duration(milliseconds: 120630),
  ),
  Verso(
    original: "Light years",
    traducao: "Anos luz",
    inicio: Duration(milliseconds: 120640),
    fim: Duration(milliseconds: 122890),
  ),
  Verso(
    original: "Between you and me",
    traducao: "Entre você e eu",
    inicio: Duration(milliseconds: 122900),
    fim: Duration(milliseconds: 125280),
  ),
  Verso(
    original: "I'm fading",
    traducao: "Estou desaparecendo",
    inicio: Duration(milliseconds: 125290),
    fim: Duration(milliseconds: 127740),
  ),
  Verso(
    original: "Your beauty conquers the darkness",
    traducao: "Sua beleza conquista a escuridão",
    inicio: Duration(milliseconds: 127750),
    fim: Duration(milliseconds: 134140),
  ),
  Verso(
    original: "♪",
    traducao: "",
    inicio: Duration(milliseconds: 134150),
    fim: Duration(milliseconds: 134150),
  ),
  Verso(
    original: "At night the earth will rise",
    traducao: "A noite a terra vai subir",
    inicio: Duration(milliseconds: 134160),
    fim: Duration(milliseconds: 136930),
  ),
  Verso(
    original: "And I'll think of you each time I watch from distant skies",
    traducao: "E eu pensarei em você cada vez que eu assistir dos céus distantes",
    inicio: Duration(milliseconds: 136940),
    fim: Duration(milliseconds: 141790),
  ),
  Verso(
    original: "Whenever stars go down and galaxies ignite",
    traducao: "Sempre que estrelas caírem e galáxias incendiarem",
    inicio: Duration(milliseconds: 141800),
    fim: Duration(milliseconds: 146610),
  ),
  Verso(
    original: "I'll think of you each time they wash me in their light",
    traducao: "Pensarei em você cada vez que elas me banharem em sua luz",
    inicio: Duration(milliseconds: 146620),
    fim: Duration(milliseconds: 151380),
  ),
  Verso(
    original: "And I'll fall in love with you again, I will find you",
    traducao: "E vou me apaixonar novamente por você, vou encontrar você",
    inicio: Duration(milliseconds: 151390),
    fim: Duration(milliseconds: 156860),
  ),
  Verso(
    original: "A thousand armies won't stop me I'll break through",
    traducao: "Mil exércitos não me impedirão, eu vou atravessá-los",
    inicio: Duration(milliseconds: 156870),
    fim: Duration(milliseconds: 161590),
  ),
  Verso(
    original: "I'll soar the endless skies for only one sight of your starlight",
    traducao: "Eu irei para os mundos sem fim para uma única visão, de sua luz estelar",
    inicio: Duration(milliseconds: 161600),
    fim: Duration(milliseconds: 172930),
  ),
  Verso(
    original: "♪",
    traducao: "",
    inicio: Duration(milliseconds: 172940),
    fim: Duration(milliseconds: 191070),
  ),
  Verso(
    original: "Don't leave me lost here forever",
    traducao: "Não me deixe perdido aqui para sempre",
    inicio: Duration(milliseconds: 191080),
    fim: Duration(milliseconds: 195780),
  ),
  Verso(
    original: "Show me your starlight and pull me through",
    traducao: "Mostre-me sua luz estelar e me puxe",
    inicio: Duration(milliseconds: 195790),
    fim: Duration(milliseconds: 200660),
  ),
  Verso(
    original: "Don't leave me lost here forever",
    traducao: "Não me deixe perdido aqui para sempre",
    inicio: Duration(milliseconds: 200670),
    fim: Duration(milliseconds: 205450),
  ),
  Verso(
    original: "I need your starlight and pull me through (Bring me back to you)",
    traducao: "Eu preciso da sua luz estelar e me puxe (Traga-me de volta para você)",
    inicio: Duration(milliseconds: 205460),
    fim: Duration(milliseconds: 211700),
  ),
  Verso(
    original: "Bring me back to you",
    traducao: "Traga-me de volta para você",
    inicio: Duration(milliseconds: 211710),
    fim: Duration(milliseconds: 213270),
  ),
  Verso(
    original: "♪",
    traducao: "",
    inicio: Duration(milliseconds: 213270),
    fim: Duration(milliseconds: 213275),
  ),
  Verso(
    original: "At night the earth will rise",
    traducao: "À noite a terra vai subir",
    inicio: Duration(milliseconds: 213280),
    fim: Duration(milliseconds: 213320),
  ),
  Verso(
    original: "And I'll think of you each time I watch from distant skies",
    traducao: "E eu pensarei em você cada vez que eu assistir dos céus distantes",
    inicio: Duration(milliseconds: 213330),
    fim: Duration(milliseconds: 216220),
  ),
  Verso(
    original: "Whenever stars go down and galaxies ignite",
    traducao: "Sempre que estrelas caírem e galáxias incendiarem",
    inicio: Duration(milliseconds: 216230),
    fim: Duration(milliseconds: 220980),
  ),
  Verso(
    original: "I'll think of you each time they wash me in their light",
    traducao: "Pensarei em você cada vez que elas me banharem em sua luz",
    inicio: Duration(milliseconds: 220990),
    fim: Duration(milliseconds: 225800),
  ),
  Verso(
    original: "And I'll fall in love with you again, I will find you",
    traducao: "E vou me apaixonar novamente por você. Eu irei encontrar você",
    inicio: Duration(milliseconds: 225810),
    fim: Duration(milliseconds: 230560),
  ),
  Verso(
    original: "A thousand armies won't stop me I'll break through",
    traducao: "Mil exercitos não me impedirão Eu irei atravessá-los",
    inicio: Duration(milliseconds: 230570),
    fim: Duration(milliseconds: 236000),
  ),
  Verso(
    original: "I'll soar the endless skies for only one sight of your starlight",
    traducao: "Eu irei para os mundos sem fim para uma única visão De sua luz estelar",
    inicio: Duration(milliseconds: 236010),
    fim: Duration(milliseconds: 240840),
  ),
  Verso(
    original: "♪",
    traducao: "",
    inicio: Duration(milliseconds: 240850),
    fim: Duration(milliseconds: 252120),
  ),
  
];



  @override
  void initState() {
    super.initState();
    _carregarAudio();
    _player.positionStream.listen((posicao) {
        for (final verso in versos) {
          if (posicao >= verso.inicio && posicao <= verso.fim) {
            if (versoAtual != verso) {
              setState(() => versoAtual = verso);
            }
            break;
          }
        }
    });
  }

  Future<void> _carregarAudio() async {
    try {
      await _player.setAsset('ativos/musica/starlight.mp3');
    } catch (e) {
      debugPrint('Erro ao carregar áudio: $e');
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  Widget _conteudoDinamico() {
    switch (conteudoAtual) {
      case ConteudoAtual.contadores:
        return _widgetContadores();
      case ConteudoAtual.musica:
        return _widgetMusica();
      case ConteudoAtual.descricaoMusica:
        return _widgetDescricaoMusica();
      case ConteudoAtual.descricaoApp:
        return _widgetDescricaoApp();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            rosaClaro,
            Color(0xFFE6C9E6),
            roxoClaro,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final double larguraMaxima =
                    constraints.maxWidth > 420 ? 420 : constraints.maxWidth;

                return Center(
                  child: SizedBox(
                    width: larguraMaxima,
                    child: Column(
                      children: [
                        const SizedBox(height: 24),

                        Text(
                          'Princesa Rafaela',
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 24),

                        CarouselSlider(
                          options: CarouselOptions(
                            enlargeCenterPage: true,
                            autoPlay: true,
                            viewportFraction: 0.8,
                          ),
                          items: imagens
                              .map(
                                (img) => SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.45,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      img,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),

                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 400),
                          transitionBuilder: (child, animation) {
                            return FadeTransition(
                              opacity: animation,
                              child: SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(0, 0.1),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              ),
                            );
                          },
                          child: _conteudoDinamico(),
                        ),

                        const SizedBox(height: 32),

                        // ❤️ Coração
                        GestureDetector(
                          onTap: () async {
                            if (conteudoAtual == ConteudoAtual.musica) {
                              if (!tocando) {
                                _player.play();
                              } else {
                                _player.pause();
                              }
                              setState(() => tocando = !tocando);
                            } else {
                              _avancarConteudo();
                              _controlarAudioAoTrocar();
                            }
                          },
                          child: Icon(
                            Icons.favorite,
                            size: 64,
                            color: conteudoAtual == ConteudoAtual.musica && tocando
                                ? const Color(0xFF7E0A7E)
                                : Colors.grey,
                          ),
                        ),

                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _widgetContadores() {
    return Column(
      key: const ValueKey('contadores'),
      children: [
        Text('$diasEncontro dias que nos conhecemos',
            style: const TextStyle(fontWeight: FontWeight.bold)),
        Text('$diasNamoro dias juntos',
            style: const TextStyle(fontWeight: FontWeight.bold)),
        Text('$luas luas 🌕 apaixonados',
            style: const TextStyle(fontWeight: FontWeight.bold)),
        const Text('Todos os dias amando você',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );                      
  }

  Widget _widgetMusica() {
    return Column(
      key: const ValueKey('musica'),
      children: [
        if (versoAtual != null) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              versoAtual!.original,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              versoAtual!.traducao,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
          ),
        ] else
          const Text('Pressione o coração para ouvir 💜'),
      ],
    );
  }
  
  Widget _widgetDescricaoMusica() {
    return Column(
      key: const ValueKey('descricaoMusica'),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'ativos/imagens/capa_album.jpg',
            height: 220,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Starlight é uma música sobre conexões que resistem ao tempo, '
            'à distância e ao silêncio do universo.',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _widgetDescricaoApp() {
    return Column(
      key: const ValueKey('descricaoApp'),
      children: const [
        Text(
          '“',
          style: TextStyle(
            fontSize: 32,
            color: Color(0xFF7E0A7E),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Uma pequena amostra de todo o carinho que você merece.\n'
          'Por que amar se não pudermos expressar todos os dias?',
          textAlign: TextAlign.center,
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        SizedBox(height: 8),
        Text('- Kaddu, 2025'),
      ],
    );
  }
}