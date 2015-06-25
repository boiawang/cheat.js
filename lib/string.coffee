cheat = require('..')

string = {

  # 随机生成名字
  # @param {string} link 连接名字
  # @return {string}
  name: (link = ' ') ->
    _firstNum = cheat.number.range(4, 7)
    _lastNum = cheat.number.range(4, 10)

    return "#{cheat.utils.capitalize(cheat.random.string(_firstNum))}#{link}#{cheat.utils.capitalize(cheat.random.string(_lastNum))}"

  # 随机生成手机号
  # @example 13657576541
  # @param {boolean} isPrefix 是否带前缀
  # @return {string}
  # @todo 支持国外手机号
  phone: (isPrefix = false) ->
    secondNum = [3, 5, 7, 8][cheat.number.range(0, 3)]
    lastNums = cheat.array.randomIntegers(9, 0, 9).join('')

    _phone = "1#{secondNum}#{lastNums}"

    if isPrefix
      _phone = '86-' + _phone
    
    return _phone

  # 随机生成邮箱码
  # @example zcn@gg.cc
  # @return {string}
  email: () ->
    _name = cheat.number.range(5, 8)
    _host = cheat.number.range(4, 7)
    _c = cheat.number.range(2, 4)

    return "#{cheat.utils.capitalize(cheat.random.string(_name))}@#{cheat.random.string(_host)}.#{cheat.random.string(_c)}"

  # 随机生成guid
  # @return {string} 例: 5dbdc8b5-c2b3-54a6-bc8f-6e95e7968d49
  # @see http://stackoverflow.com/questions/105034/create-guid-uuid-in-javascript
  guid: () ->
    _temp   = 'xxxxxxxx-xxxx-xxxx-yxxx-xxxxxxxxxxxx'

    return _temp.replace(/[xy]/g, (c) ->
      r = Math.random() * 16 | 0
      v= if c is 'x' then r else (r & 0x3 | 0x8)
      return v.toString(16)
    )

}

module.exports = string
