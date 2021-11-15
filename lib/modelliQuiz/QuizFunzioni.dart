
final domanda = [
  {
    //index 0
    'domanda': 'Se una funzione non ritorna alcun valore particolare, il suo tipo di ritorno è...',
    'risposte': [
      {'risposte': 'Void', 'score': false},
      {'risposte': 'Short', 'score': false},
      {'risposte': 'Char', 'score': false},
      {'risposte': 'Unit', 'score': true},
    ],
  },
  {
    //index 1
    'domanda':
               'Quale dei seguenti parametri è di default?'
                   '                                                 '
                   'fun finestra(val altezza:Int, val larghezza:Double, var spessore:Float, var colore:String="celeste")',
    'risposte': [
      {'risposte': 'altezza', 'score': false},
      {'risposte': 'larghezza', 'score': false},
      {'risposte': 'spessore', 'score': false},
      {'risposte': 'colore', 'score': true},
    ],
  },
  {
    //index 2
    'domanda': 'Quale è il formato per scrivere un extension functions?',
    'risposte': [
      {'risposte': 'fun funtionName.ClassName(params) {}', 'score': false},
      {'risposte': 'fun ClassName funtionName(params) {}', 'score': false},
      {'risposte': 'fun funtionName ClassName(params) {}', 'score': false},
      {'risposte': 'fun ClassName.functionName( params ) {}', 'score': true},
    ],
  },
  {
    //index 3
    'domanda': 'A che cosa serve il parametro vararg in una funzione?',
    'risposte': [
      {'risposte': 'Permette di scrivere una versione ricorsiva più efficente', 'score': false},
      {'risposte': 'Serve per sovrascrivereuna funzione', 'score': false},
      {'risposte': 'Nessuna delle precedenti', 'score': false},
      {'risposte': 'Per accettare un numero variabile di parametri di un certo tipo', 'score': true},
    ],
  },
];

final domanda5 = [
  {
    'domanda5':
    'fun main() {'
'val p2= 5'
'var r:Int= 0'
'print(r.countandMore(parola1=6, p2))'
'}'
'fun Int.countandMore(parola1:Int, parola2:Int, op:String="+" ):Int{'
'var result:Int= 0'
'when(op){'
'"*"  ->result= parola1 * parola2'
'"-" -> result= parola1- parola2'
'"/" -> result =parola1 / parola2'
'"+" ->  result= parola1 + parola2'
'else -> result =-1'
'}'
'return result'
'}',

    'risposta5': '11',

  },
];
