
final domanda = [
  {
    //index 0
    'domanda': 'Cosa ritorna questo pezzo di codice:'

    'val bob= Person("Bob", 31)'
    '                                                  '
    'val people= listOf(Person("Adam", 20), bob, bob)'
    '                                                  '
    'val people2= listOf(bob, Person("Adam", 20), Person("Bob", 31) )'
    '                                                  '
    'println(people== people2)'
    '                                                  '
    'bob.age=32'
    '                                                  '
    'println(people== people2)                         ',
    'risposte': [
      {'risposte': 'true e true', 'score': false},
      {'risposte': 'true e false', 'score': false},
      {'risposte': 'false e true', 'score': false},
      {'risposte': 'false e false', 'score': true},
    ],
  },
  {
    //index 1
    'domanda':
    'Quale di queste è una collezione ordinata di elementi che possono ripetersi?',
    'risposte': [
      {'risposte': 'Array', 'score': false},
      {'risposte': 'Map', 'score': false},
      {'risposte': 'Set', 'score': false},
      {'risposte': 'List', 'score': true},
    ],
  },
  {
    //index 2
    'domanda': 'Che cosa fa la funzione array.contains()??',
    'risposte': [
      {'risposte': "Ritorna l'indice dell'elemento passato", 'score': false},
      {'risposte': "Ritorna l'oggetto in questione se è presente", 'score': false},
      {'risposte': 'Nessuna di queste', 'score': false},
      {'risposte': "Verifica se è contenuto nell'array", 'score': true},
    ],
  },
  {
    //index 3
    'domanda': 'Che cosa restituisce questo pezzo di codice?'
'                                                     '
    'val numbers = intArrayOf(1,2,3)'
    '                                          '
    'val numbers2 = intArrayOf(4,5,6)'
    '                                          '
    'val combined = numbers2 + numbers'
    '                                          '
    'println(Arrays.toString(combined))',
    'risposte': [
      {'risposte': '[5,7,9]', 'score': false},
      {'risposte': 'Nessuna di queste', 'score': false},
      {'risposte': '[cinque, sette, nove]', 'score': false},
      {'risposte': '[4, 5, 6, 1, 2, 3]', 'score': true},
    ],
  },
];

final domanda5 = [
  {
    'domanda5':
    'Cosa restituisce?'
    '                                                                          '
    'val numbersMap = mapOf("key1" to 1, "key2" to 2, "key3" to 3, "key4" to 1)'
    '                                                                          '
    'val anotherMap = mapOf("key2" to 2, "key1" to 1, "key4" to 1, "key3" to 3)'
    '                                                                          '
    'println(\${numbersMap == anotherMap})',

    'risposta5': 'true',
  },
];
