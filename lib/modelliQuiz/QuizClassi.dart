
final domanda = [
  {
    //index 0
    'domanda': 'Come devo definire il costruttore della classe C per far si che l\'opeazione vada a termine senza errori?'

  'val cc = C(42)'
    'println(cc.y)',
    'risposte': [
      {'risposte': 'class C', 'score': false},
      {'risposte': 'class C(y:Int)', 'score': false},
      {'risposte': 'class C(var x:Int)', 'score': false},
      {'risposte': 'class C(val y:Int)', 'score': true},
    ],
  },
  {
    //index 1
    'domanda':
    'Che cosa posso usare per eseguire il codice di inizializzazione di una classe?',
    'risposte': [
      {'risposte': 'init', 'score': false},
      {'risposte': 'constructor', 'score': false},
      {'risposte': 'this', 'score': false},
      {'risposte': 'Tutte corrette', 'score': true},
    ],
  },
  {
    //index 2
    'domanda': 'Quale keyword mi permette di inizializzare una proprietà non-nullable in un secondo momento?',
    'risposte': [
      {'risposte': 'final', 'score': false},
      {'risposte': 'open', 'score': false},
      {'risposte': 'this', 'score': false},
      {'risposte': 'lateinit', 'score': true},
    ],
  },
  {
    //index 3
    'domanda': 'E\' possibile definire un get personalizzato per una determinata variabile x"? Se si, come?'

'class A(val x: Int){'
'val x:Int'
'...'
'val p= A(2)',
    'risposte': [
      {'risposte': 'Non è possibile', 'score': false},
      {'risposte': 'Con p.x', 'score': false},
      {'risposte': 'Usando p.x.value', 'score': false},
      {'risposte': 'Si, mettendo get()=.. sotto la definizione di x', 'score': true},
    ],
  },
];

final domanda5 = [
  {
    'domanda5':
    'Che cosa stampa a video questa porzione di codice?'

'class Quadrato( h:Int,  w:Int){'
'var altezza: Int'
'var larghezza: Int=0'
'set(value){field=value/2}'
'val area:Int'
'get()=altezza*larghezza'
'init{'
'altezza=h'
'larghezza=w'
'}'
'}'
'fun main(){'
  'var f= Quadrato(90,8)'
  'f.larghezza=6'
  'print(f.area)'
'}',

    'risposta5': '270',


  },
];
