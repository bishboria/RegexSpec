describe 'Regular Expressions', ->
  describe '^', ->
    it 'matches at the start of a line', ->
      expect('Hello').toMatch(/^Hello/)

    it 'doesn\'t match when not at the start of the line', ->
      expect('xHello').not.toMatch(/^Hello/)

  describe '$', ->
    it 'matches at the end of the line', ->
      expect('Hello').toMatch(/Hello$/)

    it 'doesn\'t match when not at the end of the line', ->
      expect('Hello.').not.toMatch(/Hello$/)

  describe '*', ->
    it 'matches zero repeats', ->
      expect('a').toMatch(/ab*/)

    it 'matches one repeat', ->
      expect('ab').toMatch(/ab*/)

    it 'matches multiple repeats', ->
      expect('abb').toMatch(/ab*/)

  describe '?', ->
    it 'matches zero repeats', ->
      expect('ac').toMatch(/ab?c/)

    it 'matches one repeat', ->
      expect('abc').toMatch(/ab?c/)

    it 'doesn\'t match multiple repeats', ->
      expect('abbc').not.toMatch(/ab?c/)

  describe '+', ->
    it 'doesn\'t match zero repeats', ->
      expect('a').not.toMatch(/ab+/)

    it 'matches one repeat', ->
      expect('ab').toMatch(/ab+/)

    it 'matches multiple repeats', ->
      expect('abb').toMatch(/ab+/)

  describe '.', ->
    it 'matches a single character', ->
      expect('abc').toMatch(/a.c/)

    it 'doesn\'t match multiple characters', ->
      expect('abbc').not.toMatch(/a.c/)

  describe '\\', ->
    it 'escapes .', ->
      expect('Hello.').toMatch(/\.$/)
