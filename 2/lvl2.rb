File.open("lvl2in", "r") do |infile|
  str =""
    while (line = infile.gets)
      str << line
    end
    puts str.scan(/[a-zA-Z]/).join("")
end
