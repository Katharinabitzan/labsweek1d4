def calculate (length, width, height)
  return length * width * height
end

def manipulate(integer)
  integer += 10
  p "expected integer:", integer
end
manipulate (1)

def defined_method()
  p "success"
end

defined_method

def add (num1, num2, num3)
  return num1 + num2 + num3
end
p add(1,2,3)

fruits = ["apple", "orange", "pear", "plums"]

def missing(array)
  for fruit in array
    if(fruit == "grape")
      p "Plums!"
    end
  end
  if(fruit == "apple" || fruit == "orange")
      p "meh"
  end
end

p missing(fruits)
