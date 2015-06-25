mocha  = require('mocha')
assert = require('assert')
utils  = require('../../lib/utils')

describe('module utils', () ->
  describe('#capitalize', () ->
    it 'should capitalize the first character', () ->
      assert.equal(utils.capitalize('abc'), 'Abc')
      assert.equal(utils.capitalize('aBc'), 'Abc')
      assert.equal(utils.capitalize('aBC'), 'Abc')
      assert.equal(utils.capitalize('ABC'), 'Abc')
  )

  describe('#isObject', () ->
    it 'should judge whether a variable is an object', () ->
      assert.strictEqual(utils.isObject({}), true)
      assert.strictEqual(utils.isObject([]), true)
      assert.strictEqual(utils.isObject(1), false)
      assert.strictEqual(utils.isObject(''), false)
      assert.strictEqual(utils.isObject(() ->), true)
  )

  describe('#isString', () ->
    it 'should judge whether a variable is an string', () ->
      assert.strictEqual(utils.isString({}), false)
      assert.strictEqual(utils.isString(''), true)
  )
)
