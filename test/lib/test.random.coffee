mocha  = require('mocha')
assert = require('assert')
random  = require('../../lib/random')

describe('module random', () ->
  describe('#integer', () ->
    it 'should random an integer num with no param', () ->
      assert.strictEqual(999999999 >= random.integer() >= 0, true)

    it 'should generate a 0 - 10 num with negative', () ->
      assert.strictEqual(10 > random.integer(-1) >= 0, true)
      
    it 'should generate a fixed length num with a fixed num', () ->
      assert.strictEqual(999 > random.integer(3) >= 100, true)
  )
)
