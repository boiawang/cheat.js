cheat = require('..')

# 随机生成js的一些类型
random = {
  # 随机生成一个数字
  # @param {int} num 几位 默认不限制
  # @return {int}
  integer: (num) ->
    _num = 0

    if num <= 0
      num = 1

    if num
      _num = cheat.number.range(Math.pow(10, num - 1), Math.pow(10, num) - 1)
    else
      _num = cheat.number.range(0, 999999999)

    return _num

  # 随机生成n个字符
  # @param {int} num 几位 默认不限制
  # @return {string}
  # @todo 增加大写字母需求
  string: (num) ->
    _str = ''

    if not num
      num = cheat.number.range(3, 12)
    if num <= 0
      num = 1

    if num
      for _i in [0...num]
        _char = cheat.number.range(97, 122)
        _str += String.fromCharCode(_char)

    return _str

  # 随机生成boolean
  # @return {boolean}
  bool: () ->
    return !!cheat.number.range(0, 1)

  # 随机生成object
  # @param {array|object} fields 所有字段
  # ['name@string', 'age@integer', 'haveMarry@bool']
  # @todo 每个字段可进行控制 如数字可以控制大小
  object: (fields) ->
    _obj  = {}
    _this = this

    # 判断是否为数组
    # 数组没有递归的模式
    if Array.isArray(fields)
      for field in fields
        splitArr = field.split('@')
        type = cheat.type[splitArr[1]]

        _obj[splitArr[0]] = cheat[type.module][splitArr[1]]()

    # 是否为对象
    # 可以生成复杂对象
    else if cheat.utils.isObject(fields)
      Object.keys(fields).forEach (key) ->
        value = fields[key]

        if cheat.utils.isString(value)
          splitArr = value.split('@')
          type = cheat.type[splitArr[1]]

          _obj[key] = cheat[type.module][splitArr[1]]()
        else
          _obj[key] = _this.object(value)

    return _obj

  date: () ->

}

module.exports = random
