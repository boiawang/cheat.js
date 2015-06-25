utils = {
  # 将第一个字符大写
  # @param {string} string 将转化的字符
  # @return {string}
  capitalize: (string) ->
    return string.substr(0, 1).toUpperCase() + string.substring(1).toLowerCase()

  # 判断是否为对象
  # @param {mixed} value
  # @return {boolean}
  isObject: (value) ->
    type = typeof value
    return !!value and (type is 'object' or type is 'function')

  # 判断是否为字符串
  # @param {mixed} value
  # @return {boolean}
  isString: (value) ->
    return typeof value is 'string'
}

module.exports = utils
