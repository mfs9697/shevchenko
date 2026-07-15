local alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

local function decode_base64(data)
  data = data:gsub('%s+', '')
  data = data:gsub('[^' .. alphabet .. '=]', '')

  return (data:gsub('.', function(char)
    if char == '=' then
      return ''
    end

    local value = alphabet:find(char, 1, true) - 1
    local bits = ''
    for index = 6, 1, -1 do
      bits = bits .. (value % 2^index - value % 2^(index - 1) > 0 and '1' or '0')
    end
    return bits
  end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(bits)
    if #bits ~= 8 then
      return ''
    end

    local value = 0
    for index = 1, 8 do
      if bits:sub(index, index) == '1' then
        value = value + 2^(8 - index)
      end
    end
    return string.char(value)
  end))
end

function decode_base64_file(input_path, output_path)
  local input = assert(io.open(input_path, 'rb'))
  local encoded = input:read('*a')
  input:close()

  local output = assert(io.open(output_path, 'wb'))
  output:write(decode_base64(encoded))
  output:close()
end
