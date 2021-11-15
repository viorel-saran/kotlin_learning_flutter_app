//list of maps
//quiz per l'argomento delle variabili
//4 domande con risposta da bottone e 1 domanda con risposta da tastiera

final domanda = [
  {
    //index 0
    'domanda': 'Quale è il carattere di escape per andare a capo?',
    'risposte': [
      {'risposte': r"\t", 'score': false},
      {'risposte': r'\r', 'score': false},
      {'risposte': r'\f', 'score': false},
      {'risposte': r'\n', 'score': true},
    ],
  },
  {
    //index 1
    'domanda': 'Quale è il simbolo di una template espression?',
    'risposte': [
      {'risposte': '£', 'score': false},
      {'risposte': '&', 'score': false},
      {'risposte': '#', 'score': false},
      {'risposte': r'$', 'score': true},
    ],
  },
  {
    //index 2
    'domanda': 'Con cosa posso concatenare due o più stringhe?',
    'risposte': [
      {'risposte': '+', 'score': false},
      {'risposte': 'plus', 'score': false},
      {'risposte': 'StringBuilder', 'score': false},
      {'risposte': 'Tutte le presenti', 'score': true},
    ],
  },
  {
    //index 3
    'domanda': 'Quando uso degli operatori di concatenazione ottengo sempre una nuova stringa contenete la composizione delle stringhe?',
    'risposte': [
      {'risposte': 'Si', 'score': false},
      {'risposte': "Solo con l'operatore plus()", 'score': false},
      {'risposte': 'Non avviene mai', 'score': false},
      {'risposte': "Solo con l'operatore StringBuilder()", 'score': true},
    ],
  },
];

final domanda5 = [
  {
    'domanda5':
    'Che cosa restituisce a schermo questa espressione?'

    'val a= "I"'
    'val b:String= "have"'
    'val c= a +" "+ b'
    'val builder= StringBuilder()'
    'builder.append(c)'
    '    .append("")'
    '    .append(" an apple")'
    'print(builder)',
    //risposta da tastiera// I have an apple

    'risposta5': 'I have an apple',

  },
];
