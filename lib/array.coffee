cheat = require('..')

array = {
  # 随机生成一串正数
  # @param {int} nums 个数
  # @param {int} min 最小数
  # @param {int} max 最大数
  # @return {array}
  randomIntegers: (nums = 0, min = 0, max = 10) ->
    _i = 0
    _array = []

    while _i < nums
      _i += 1

      _array.push cheat.number.range(min, max)

    return _array

  # 随机生成一串字符串
  randomStrings: () ->

  # 随机生成n个对象
  # @param {array} fields 所有字段
  # @param {int} count 生成n个对象
  randomObjects: (fields, count) ->
    _array = []
    if count <= 0
      count = 1

    if not count
      count = cheat.number.range(10, 100)
    
    for _i in [0...count]
      _array.push(cheat.random.object(fields))

    return _array
}

module.exports = array
