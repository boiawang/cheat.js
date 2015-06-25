mocha  = require('mocha')
assert = require('assert')
number  = require('../../lib/number')

describe('module number', () ->
  describe('#range', () ->
    it('should generate random number', () ->
      assert.strictEqual(10 >= number.range(0, 10) >= 0, true)
    )

    it('should generate random number with min > max', () ->
      assert.strictEqual(10 >= number.range(10, 0) >= 0, true)
    )
  )

  describe('#floating', () ->
    it('should generate random floating with no param', () ->
      num = number.floating()
      assert.strictEqual(100 >= num >= 0, true)
      assert.strictEqual(/^\d+[.]\d{3}$/g.test(num), true)
    )

    it('should generate random floating with fixed params', () ->
      num = number.floating(40, 45, 5)
      assert.strictEqual(45 >= num >= 40, true)
      assert.strictEqual(/^\d+[.]\d{5}$/g.test(num), true)
    )
  )
)
