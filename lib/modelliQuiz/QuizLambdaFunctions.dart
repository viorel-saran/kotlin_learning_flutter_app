
final domanda = [
  {
    //index 0
    'domanda': 'Che cosa è una lambda functions?',
    'risposte': [
      {'risposte': 'E\' una funzione scritta in modo compatto', 'score': false},
      {'risposte': 'E\' una funzione aggiunta ad una classe già esistente', 'score': false},
      {'risposte': 'Una funzione che prende altre funzioni come parametro', 'score': false},
      {'risposte': 'E\' una espressione che crea una funzione senza nome', 'score': true},
    ],
  },
  {
    //index 1
    'domanda':
    'Quale è la sintassi completa di una lambda function?',
    'risposte': [
      {'risposte': 'val waterFilter = {level: Int -> level/2}', 'score': false},
      {'risposte': 'val waterFilter{level -> level/2}:(Int)-> Int', 'score': false},
      {'risposte': 'val waterFilter = { Int:level -> level/2}', 'score': false},
      {'risposte': 'val waterFilter:(Int)-> Int = {level -> level/2}', 'score': true},
    ],
  },
  {
    //index 2
    'domanda': 'Con quale operatore posso passare una funzione con nome come parametro ad un higher-order functions ?',
    'risposte': [
      {'risposte': ':', 'score': false},
      {'risposte': '_', 'score': false},
      {'risposte': '\$', 'score': false},
      {'risposte': '::', 'score': true},
    ],
  },
  {
    //index 3
    'domanda': 'Posso chiamare la funzione "encodeMsg" in questo modo?'
    'fun encodeMsg(msg: String, encode: (String) -> String): String {'
    'return encode(msg)'
    '}'
    'encodeMsg("acronym") { input -> input.toUpperCase() }',

    'risposte': [
      {'risposte': 'No, la lambda function va dentro le parentesi tonde', 'score': false},
      {'risposte': 'Si con l\'utilizzo dell\'operatore :: prima di input', 'score': false},
      {'risposte': 'No, non è una chiamata di funzione', 'score': false},
      {'risposte': 'Si, è corretta', 'score': true},
    ],
  },
];

final domanda5 = [
  {
    'domanda5':
    'Che cosa ritorna questo pezzo di codice?            '
    '                                                    '
    'fun main(){                                         '
    'val somma:(Int, Int) -> Int = {a:Int, b:Int -> a+b} '
    'val result= calcolo(10,10,somma)                    '
    'print(result)                                       '
    '}                                                   '
    'fun calcolo(op:Int, op1:Int, operazione: '
        '(Int, Int) -> Int): Int{ '
        'return operazione(op,op1)'
    '}',

    'risposta5': '20',

  },
];
