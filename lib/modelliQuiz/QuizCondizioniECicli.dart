
final domanda = [
  {
    //index 0
    'domanda': 'Individua l"esempio che adotta una definizione di range corretta con val c:Char= "c"',
    'risposte': [
      {'risposte': 'if(c in "a".."h")', 'score': false},
      {'risposte': 'if(c in b .. f)', 'score': false},
      {'risposte': 'if(c in z..a)', 'score': false},
      {'risposte': "if(c in 'a'..'z')", 'score': true},
    ],
  },
  {
    //index 1
    'domanda':
    'Queste due porzioni di codice sono delle "expression" o "statement":'
'                                                                        '
    '~1+1     ~x = 20',
    'risposte': [
      {'risposte': 'Due expression', 'score': false},
      {'risposte': 'Statement e Expression', 'score': false},
      {'risposte': 'Due statement', 'score': false},
      {'risposte': 'Expression e Statament', 'score': true},
    ],
  },
  {
    //index 2
    'domanda': 'Che cosa ritorna questa porzione di codice'
'                                            '
    'val numeri = intArrayOf(1,2,3,4,5,6,7,8)'
    '                                        '
    'for (i in numeri) {'
    '                                        '
      'if(i==6){'
    '                                        '
        'i=9'
    '                                        '
      '}'
    '                                        '
      'print(i)',
    'risposte': [
      {'risposte': '12345678', 'score': false},
      {'risposte': '123459', 'score': false},
      {'risposte': '1234578', 'score': false},
      {'risposte': 'Errore', 'score': true},
    ],
  },
  {
    //index 3
    'domanda': 'Cosa stampa a video questa espressione:'
    '                                                  '
    'for (i in 6 downTo 1 step 2) print(i)',
    'risposte': [
      {'risposte': '531', 'score': false},
      {'risposte': '246', 'score': false},
      {'risposte': '135', 'score': false},
      {'risposte': '642', 'score': true},
    ],
  },
];

final domanda5 = [
  {
    'domanda5':
    'Che cosa stampa a video questa porzione di codice:'

'var count=0'
'for(element in "I like the sun only in summer"){'
'if(element == ' ')'
'count++'
'}'
'when(count){'
  '0 -> print("Nessuno")'
  'in 1..5 ->print("Alcuni")'
  'else ->print("Molti")'
'}',

    'risposta5': 'Molti',

    //risposta da tastiera//molti
  },
];
