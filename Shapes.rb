#Inheritance----------------------------------------------------------------------------------------
class Shape
  def Volumeof(volume)
    @volume = volumez
    puts volume
  end
end

#Classes--------------------------------------------------------------------------------------
class Cone < Shape
  def Conev(radius,height)
    fraction = 0.3333
    pi = 3.14159
    volume = fraction * pi * (radius ** 2) * height
    puts "The volume of your cone is #{volume.round(2)}cm^3"
  end

  def Cones(radius,height)
    pi = 3.14159
    math1 = Math.sqrt(radius**2 + height**2)
    math2 = math1 + radius
    sarea = math2 * (pi * radius)
    puts "The surface area of your cone is #{sarea.round(2)}cm^2"
  end

  def Volumeof(volume)
    super
  end
end


class Prism < Shape
  def Prismv(length,width,height)
    volume = length * width * height
    puts "The volume of your prism is #{volume.round(2)}cm^3"
  end

  def Prisms(length,width,height)
    sarea = 2*(width*length + height*length + height*width)
    puts "The surface area of your prism is #{sarea.round(2)}cm^2"
  end

  def Volumeof(volume)
    super
  end
end


class Pyramid < Shape
  def Pyramidv(length,width,height)
    volume = (length * width * height) / 3
    puts "The volume of your pyramid is #{volume.round(2)}cm^3"
  end

  def Pyramids(length,width,height)
    math1=Math.sqrt((length/2)**2 + height**2)
    math2=Math.sqrt((width/2)**2 + height**2)
    sarea = (length*width) + length*math2 + width*math1
    puts "The surface area of your pyramid is #{sarea.round(2)}cm^2"
  end
  def Volumeof(volume)
    super
  end
end

#User Input ----------------------------------------------------------------------------------
while true
  q=0
  a=0
  puts "\nWhat would you like to find about a shape?"
  puts "1 - Volume"
  puts "2 - Surface Area"
  a = gets.to_f

  if a == 1

    puts "\nWhat shape would you like to solve the volume of? "
    puts "1 = Pyramid"
    puts "2 = Prism"
    puts "3 = Cone"
    s=0
    puts ""
    s=gets.to_f
    if s == 1
      puts "\nWhat is the length of your pyramid in cm? "
      x=gets.to_f
      puts "\nWhat is the width of your pyramid in cm? "
      y=gets.to_f
      puts "\nWhat is the height of your pyramid in cm? "
      z=gets.to_f
      if x <= 0
        puts "\nPlease enter valid integers"
        q=1
      elsif y <= 0
        puts "\nPlease enter valid integers"
        q=1
      elsif z <= 0
        puts "\nPlease enter valid integers"
        q=1
      else
      end
      if q == 0
        puts ""
        a=Pyramid.new.Pyramidv(x,y,z)
      else
      end
    elsif s == 2
      puts "\nWhat is the length of your prism in cm? "
      x=gets.to_i
      puts "\nWhat is the width of your prism in cm? "
      y=gets.to_i
      puts "\nWhat is the height of your prism in cm? "
      z=gets.to_i
      if x <= 0
        puts "\nPlease enter valid integers"
        q=1
      elsif y <= 0
        puts "\nPlease enter valid integers"
        q=1
      elsif z <= 0
        puts "\nPlease enter valid integers"
        q=1
      else
      end
      if q == 0
        puts ""
        b=Prism.new.Prismv(x,y,z)
      else
      end
    elsif s == 3
      puts "\nWhat is the radius of your cone in cm? "
      x=gets.to_i
      puts "\nWhat is the height of your cone in cm? "
      y=gets.to_i
      if x <= 0
        puts "\nPlease enter valid integers"
        q=1
      elsif y <= 0
        puts "\nPlease enter valid integers"
        q=1
      else
      end
      if q == 0
        puts ""
        c=Cone.new.Conev(x,y)
      else
      end
    else
      puts "Please enter a valid answer"
    end
    q=0
  #------------------------------------------------------------
  elsif a == 2

    puts "\nWhat shape would you like to solve the surface area of? "
    puts "1 = Pyramid"
    puts "2 = Prism"
    puts "3 = Cone"
    v=0
    v=gets.to_f
    if v == 1
      puts "\nWhat is the length of your pyramid in cm? "
      x=gets.to_f
      puts "\nWhat is the width of your pyramid in cm? "
      y=gets.to_f
      puts "\nWhat is the height of your pyramid in cm? "
      z=gets.to_f
      if x <= 0
        puts "\nPlease enter valid integers"
        q=1
      elsif y <= 0
        puts "\nPlease enter valid integers"
        q=1
      elsif z <= 0
        puts "\nPlease enter valid integers"
        q=1
      else
      end
      if q == 0
        puts ""
        a=Pyramid.new.Pyramids(x,y,z)
      else
      end
    elsif v == 2
      puts "\nWhat is the length of your prism in cm? "
      x=gets.to_i
      puts "\nWhat is the width of your prism in cm? "
      y=gets.to_i
      puts "\nWhat is the height of your prism in cm? "
      z=gets.to_i
      if x <= 0
        puts "\nPlease enter valid integers"
        q=1
      elsif y <= 0
        puts "\nPlease enter valid integers"
        q=1
      elsif z <= 0
        puts "\nPlease enter valid integers"
        q=1
      else
      end
      if q == 0
        puts ""
        b=Prism.new.Prisms(x,y,z)
      else
      end
    elsif v == 3
      puts "\nWhat is the radius of your cone in cm? "
      x=gets.to_i
      puts "\nWhat is the height of your cone in cm? "
      y=gets.to_i
      if x <= 0
        puts "\nPlease enter valid integers"
        q=1
      elsif y <= 0
        puts "\nPlease enter valid integers"
        q=1
      else
      end
      if q == 0
        puts ""
        c=Cone.new.Cones(x,y)
      else
      end
    else
      puts "Please enter a valid answer"
    end
    q=0
  else
    puts "Please enter a valid answer"
  end
end
