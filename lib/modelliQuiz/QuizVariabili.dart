//list of maps
//quiz per l'argomento delle variabili
//4 domande con risposta da bottone e 1 domanda con risposta da tastiera

final domanda = [
  {
    //index 0
    'domanda': 'Quanti bits ha a disposizione un tipo Int e un tipo Double?',
    'risposte': [
      {'risposte': '8 e 32', 'score': false},
      {'risposte': '64 e 32', 'score': false},
      {'risposte': '32 e 16', 'score': false},
      {'risposte': '32 e 64', 'score': true},
    ],
  },
  {
    //index 1
    'domanda': 'println(2.plus(4.5))',
    'risposte': [
      {'risposte': '6', 'score': false},
      {'risposte': 'Nessuna. Non e possibile applicare metodi a tipi primitivi', 'score': false},
      {'risposte': '9', 'score': false},
      {'risposte': '6.5', 'score': true},
    ],
  },
  {
    //index 2
    'domanda': 'Queste inizializzazioni di variabili, sono ENTRAMBE corrette?',
    'risposte': [
      {'risposte': 'No, sono entrambe sbagliate', 'score': false},
      {'risposte': 'Solo la prima è corretta', 'score': false},
      {'risposte': 'Solo la seconda è corretta', 'score': false},
      {'risposte': 'Si, sono entrambe corrette', 'score': true},
    ],
  },
  {
    //index 3
    'domanda': 'Questo casting è stato eseguito in modo corretto? Se no quale è quello giusto?'
'                                                   '
        '             val i: Int = 6             '
'                                                   '
        '             val b: Byte = i            '
'                                                   '
        '             println(b)                 ',
    'risposte': [
      {'risposte': 'No, val b:Byte= Byte(i)', 'score': false},
      {'risposte': 'Si', 'score': false},
      {'risposte': 'No, val b:Byte= (Byte)i', 'score': false},
      {'risposte': 'No, val b:Byte= i.toByte()', 'score': true},
    ],
  },
];

final domanda5 = [
  {
    'domanda5':
        'Inserisce il termine mancante per completare il running senza errori                 '
'                                                          '
        '                  val i: Double = 6.0             '
'                                                          '
        '                       ___b  = 2                  '
'                                                          '
        '                     b  = i.toInt()               '
'                                                          '
        '     println(b)',

    //risposta da tastiera

    'risposta5': 'var',
    'risposta5bis': 'val',
  },
];
