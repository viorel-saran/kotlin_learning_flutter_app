
final domanda = [
  {
    //index 0
    'domanda': 'Quale di queste nozioni sulle interfaccie è vera?',
    'risposte': [
      {'risposte': 'Una classe può implementare più di un interfaccia', 'score': false},
      {'risposte': 'Posso includere proprietà astratte e non astratte, ma con definizione di metodi get e set', 'score': false},
      {'risposte': 'Se esistono più implementazioni di un metodo occorre fare override', 'score': false},
      {'risposte': 'Tutte le presenti', 'score': true},
    ],
  },
  {
    //index 1
    'domanda':
    'Come faccio a definire che una classe puo essere ereditata, ossia il subclassing?',
    'risposte': [
      {'risposte': 'Con la keyword final', 'score': false},
      {'risposte': 'Con la keyword override', 'score': false},
      {'risposte': 'Con la keyword super<T>', 'score': false},
      {'risposte': 'Con la keyword open', 'score': true},
    ],
  },
  {
    //index 2
    'domanda': 'Questo pezzo di codice è errato, cosa va inserito per correggerlo?'

    'abstract class Food {'
    'abstract val name : String'
    'val canBeEaten = true'
    'fun consume() = println("I\'m eating \${name}")'
    '}'
    'class Pizza() : Food() {'
    '.... val name = "Pizza"'
    '}',
    'risposte': [
      {'risposte': 'open', 'score': false},
      {'risposte': 'final', 'score': false},
      {'risposte': 'abstract', 'score': false},
      {'risposte': 'override', 'score': true},
    ],
  },
  {
    //index 3
    'domanda': 'Una data class ha già dei metodi autoimplementati, quale tra questi non lo è?',
    'risposte': [
      {'risposte': 'toString', 'score': false},
      {'risposte': 'equals', 'score': false},
      {'risposte': 'hashCode', 'score': false},
      {'risposte': 'isBoolean', 'score': true},
    ],
  },
];

final domanda5 = [
  {
    'domanda5':
    'Cosa restituisce a shermo questo pezzo di codice?'

'abstract class A {'
  'open fun trueOrfalse(value:Boolean): Boolean= !value'
'}'

'interface B {'
'open fun trueOrfalse(value:Boolean): Boolean= value'
'}'

'data class D (var check:Boolean) :B, A(){'
'override fun trueOrfalse(check:Boolean):Boolean = super<A>.trueOrfalse(check)'
'}'

'fun main(){'
'val d= D(true)'
'print(d.trueOrfalse(d.check))'
'}',

    'risposta5': 'false',

  },
];
