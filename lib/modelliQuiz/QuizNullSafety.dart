
final domanda = [
  {
    //index 0
    'domanda': 'Questa porzione di codice è corretta? Se no come va modificata per renderla corretta?'

    'val parole: String = null',
    'risposte': [
      {'risposte': 'E\' corretta', 'score': false},
      {'risposte': 'Una variabile non può essere mai null', 'score': false},
      {'risposte': 'Con l\'aggiunta di !! dopo String', 'score': false},
      {'risposte': 'Con l\'aggiunta di ? dopo String', 'score': true},
    ],
  },
  {
    //index 1
    'domanda':
    'Se una variabile (a) è nullable, è possibile dereferenziarla direttamente?',
    'risposte': [
      {'risposte': 'No', 'score': false},
      {'risposte': 'Si, con questo controllo if(a!=null){}', 'score': false},
      {'risposte': 'Si, in questo modo a?.dec()', 'score': false},
      {'risposte': 'Sono tutte corrette', 'score': true},
    ],
  },
  {
    //index 2
    'domanda': 'A che cosa serve l\'operatore Elvis??',
    'risposte': [
      {'risposte': 'Per deferenziare direttamente una variabile nullable', 'score': false},
      {'risposte': 'Forzare l\'interpretazione della variabile come non nulla', 'score': false},
      {'risposte': 'Verificare se la variabile è nullable', 'score': false},
      {'risposte': 'Determinare un valore alternativo se la variabile è nulla', 'score': true},
    ],
  },
  {
    //index 3
    'domanda': 'Quale operatore genera un eccezione se la variabile è nulla?',
    'risposte': [
      {'risposte': '?', 'score': false},
      {'risposte': '?:', 'score': false},
      {'risposte': '?.', 'score': false},
      {'risposte': '!!', 'score': true},
    ],
  },
];

final domanda5 = [
  {
    'domanda5':
    'Cosa stampa a video questo pezzo di codice?'

'var b:String?'
'val c:String? =("abc")'
'b= if(c!!.isEmpty()) "def" else c + "d"'
'var i= b?.length?: -1'
'if(i==-1) println("Vuoto")'
'else println(b)',

    'risposta5': 'abcd',

  },
];
