
def yell(str)
    if str.length >= 10
        return str.upcase
    end
    return str
end

puts yell("hello world")
puts yell("hello")
