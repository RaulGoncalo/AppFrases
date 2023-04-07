import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> _frases = [
    "Acredite em si mesmo e tudo será possível.",
    "O sucesso é a soma de pequenos esforços repetidos diariamente.",
    "Não desista, a jornada pode ser difícil, mas a vitória é certa.",
    "A felicidade não é algo pronto, vem das suas próprias ações.",
    "Seja a mudança que você deseja ver no mundo.",
    "Nunca é tarde demais para se tornar o que você poderia ter sido.",
    "Você é mais forte do que pensa e será mais feliz do que imagina.",
    "Faça o que você pode, com o que você tem, onde você está.",
    "Não tenha medo de falhar, tenha medo de nunca tentar.",
    "Acredite que você pode e você já está no meio do caminho.",
    "Só é possível alcançar um grande êxito quando nos mantemos fiéis a nós mesmos.",
    "Nunca permita que as pessoas digam que algo não pode ser feito. Se você acredita, lute por isso.",
    "O único lugar onde o sucesso vem antes do trabalho é no dicionário.",
    "Se você acha que pode ou se acha que não pode, você está certo.",
    "Não é o que você olha que importa, é o que você vê.",
    "Nós somos o que fazemos repetidamente. Excelência, portanto, não é um ato, mas um hábito.",
    "A persistência é o caminho do êxito.",
    "O sucesso é a soma de pequenos esforços, repetidos dia após dia.",
    "Tente não se tornar um homem de sucesso, mas sim tente se tornar um homem de valor.",
    "Um objetivo não é sempre destinado a ser alcançado, ele muitas vezes serve simplesmente como algo para se mirar.",
    "O sucesso é uma consequência e não um objetivo.",
    "O que você obtém por alcançar seus objetivos não é tão importante quanto o que você se torna por alcançá-los.",
    "Acredite em seus sonhos e eles podem se tornar realidade.",
    "A disciplina é a ponte entre metas e realizações.",
    "Não desista. Normalmente é a última chave no molho que abre a porta.",
    "Se você quer mudar o mundo, comece com você mesmo.",
    "Se você quer algo que nunca teve, você precisa estar disposto a fazer algo que nunca fez.",
    "Acredite no seu potencial, trabalhe duro e coisas incríveis acontecerão.",
    "Não espere por oportunidades, crie-as.",
    "O fracasso é uma oportunidade para começar de novo com mais inteligência.",
    "A única maneira de fazer um excelente trabalho é amar o que você faz.",
    "Não importa quantas vezes você falhe, você deve ser determinado a ter sucesso. Você não pode desistir e não pode fracassar.",
    "Nada é impossível, a palavra em si diz: 'Sou possível!'",
    "Não é sobre ter tempo, é sobre fazer tempo.",
    "A única pessoa que você está destinado a se tornar é a pessoa que você decide ser.",
    "O sucesso não é o final, o fracasso não é fatal: é a coragem de continuar que conta. ",
    "A única forma de fazer um grande trabalho é amar o que você faz.",
    "Não importa quantos obstáculos você encontrou, continue avançando em direção aos seus objetivos.",
    "O sucesso não é uma chave para a felicidade. A felicidade é a chave para o sucesso.",
    "Os sonhos não têm prazo de validade, siga em frente.",
    "A vida é 10% do que nos acontece e 90% de como reagimos a isso.",
    "Se você quer ser feliz, seja.",
    "Tudo é possível desde que você acredite que é possível.",
    "Não deixe ninguém dizer que você não pode fazer algo. Se você tem um sonho, corra atrás dele.",
    "Se você quer algo, vá atrás. Ponto final.",
    "O sucesso é o resultado da preparação, trabalho duro e aprender com o fracasso.",
    "Se você quer mudar o mundo, comece por fazer sua cama.",
    "Toda grande conquista começa com um único passo.",
    "Pense em grande e não tenha medo de falhar. A falha é apenas um passo para o sucesso.",
    "As pessoas que são loucas o suficiente para pensar que podem mudar o mundo são as que o fazem.",
    "Não deixe o medo te impedir de fazer o que você ama.",
    "A única limitação é a que você coloca em sua mente.",
    "Não deixe o passado controlar seu futuro.",
    "A vida não é sobre esperar a tempestade passar, é sobre aprender a dançar na chuva.",
    "Mantenha a calma e continue seguindo em frente.",
    "Não deixe pequenas coisas atrapalharem seus sonhos.",
    "Você nunca é velho demais para definir uma meta ou sonhar um novo sonho.",
    "O sucesso é um estado de espírito. Se você quer ter sucesso, comece a pensar em si mesmo como um sucesso.",
    "Acredite em si mesmo e todo o resto seguirá.",
    "Faça o que ama e ame o que faz.",
    "A imaginação é mais importante que o conhecimento.",
    "Você é o único responsável por sua felicidade.",
    "Não espere pela oportunidade, crie-a.",
    "Você não falha até que desista de tentar.",
    "Nunca é tarde demais para ser o que você poderia ter sido.",
    "Não tenha medo de se arriscar. Grandes coisas nunca vêm de sua zona de conforto.",
    "Você é capaz de muito mais do que imagina.",
    "Os maiores heróis da vida real são aqueles que lutam todos os dias.",
    "O sucesso é a soma de pequenos esforços repetidos dia após dia.",
    "Aproveite o momento e faça o seu melhor.",
    "Ninguém pode fazer você se sentir inferior sem o seu consentimento.",
    "Sempre há um novo dia e uma nova chance de começar de novo.",
    "Apenas comece. Apenas tente. O resto se seguirá naturalmente.",
    "Pare de pensar em problemas e comece a pensar em soluções.",
    "A diferença entre o impossível e o possível reside na determinação de uma pessoa.",
    "Não importa quantas vezes você ccai, o importante é quantas vezes você se levanta e continua tentando.",
    "Se você não está disposto a arriscar, você nunca crescerá.",
    "As dificuldades são oportunidades para descobrir do que você é capaz.",
    "O fracasso é apenas uma oportunidade para recomeçar com mais sabedoria.",
    "Mantenha seus objetivos em mente e nunca desista até alcançá-los.",
    "Nunca deixe que a falta de recursos impeça você de alcançar seus objetivos.",
    "A determinação é a chave para superar qualquer obstáculo.",
    "Acredite em si mesmo e você estará a meio caminho do sucesso.",
    "O sucesso é uma jornada, não um destino.",
    "A persistência é o caminho para o sucesso.",
    "O sucesso não é fácil, mas é possível.",
    "Não se preocupe com o que os outros estão fazendo, concentre-se em sua própria jornada.",
    "A vida é curta demais para não perseguir seus sonhos.",
    "Não tenha medo de pedir ajuda quando precisar.",
    "O fracasso é uma oportunidade para aprender e crescer.",
    "Faça uma coisa por dia que o leva em direção aos seus objetivos.",
    "O sucesso não vem da sorte, vem do trabalho duro e da dedicação.",
    "O tempo é precioso, não o desperdice.",
    "Nunca desista antes de tentar.",
    "O sucesso não é uma questão de sorte, mas de preparação e oportunidade.",
    "Você é capaz de muito mais do que imagina.",
    "Acredite em si mesmo e tudo será possível.",
    "O sucesso é a soma de pequenas coisas feitas bem todos os dias.",
    "Não importa quantas vezes você falhe, continue tentando.",
    "A vida é um presente, aproveite ao máximo.",
    "A gratidão é a chave para a felicidade.",
    "A jornada é tão importante quanto o destino.",
    "Aprenda com o passado, viva o presente e construa o futuro.",
    "Faça o seu melhor e não se preocupe com o resultado.",
    "Não deixe a negatividade de outras pessoas afetar seus objetivos.",
    "Seja a mudança que você quer ver no mundo.",
    "Tudo o que você precisa para ter sucesso está dentro de você.",
    "Acredite em si mesmo e os outros também acreditarão em você.",
    "Não deixe o medo de falhar impedir você de tentar.",
    "O sucesso é alcançado através de pequenas vitórias diárias.",
    "Não se preocupe com o que poderia dar errado, concentre-se no que pode dar certo.",
    "Não existe um caminho para a felicidade, a felicidade é o caminho.",
    "Nunca desista de si mesmo, você é capaz de coisas incríveis.",
    "O sucesso não é medido pelo dinheiro ou pelo poder, mas pela felicidade e realização pessoal.",
    "Não tenha medo de mudar de rumo se algo não estiver funcionando.",
    "Aprenda com seus erros e use-os como uma oportunidade para crescer.",
    "A vida é cheia de altos e baixos, mas é como você reage a eles que faz a diferença.",
  ];

  String _fraseExibicao = "Clique abaixo para ver uma nova frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length) ;

    setState(() {
      _fraseExibicao = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Frases do dia'),
          backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Text(
              _fraseExibicao,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: _gerarFrase,
              child: Text(
                  'Nova frase',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
              )
            ),
          ],
        ),
      ),
    );
  }
}
