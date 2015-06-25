# @todo 判断类型
number = {

  # 随机生成一个正数
  # @param {int} min 最小数
  # @param {int} max 最大数
  # @return {int} min - max的一个数
  # @todo 可以传负数
  range: (min, max) ->
    t = 0
    if min > max
      t = min
      min = max
      max = t
    return Math.floor(Math.random()*(max - min + 1) + min)

  # 随机生成一个小数
  # @param {int} min 最小数 default 1
  # @param {int} max 最大 default 100
  # @param {int} fixed 保留几位小数 default 3
  # @return {int} min - max的一个小数
  floating: (min = 1, max = 100, fixed = 3) ->
    return parseFloat(Math.min(min + (Math.random() * (max - min)),max).toFixed(fixed))
}

module.exports = number
