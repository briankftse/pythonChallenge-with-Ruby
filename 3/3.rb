File.open("3.in", "r") do |infile|
  str =""
    while (line = infile.gets)
      str << line
    end
    arr = str.scan(/[a-z][A-Z]{3}[a-z][A-Z]{3}[a-z]/)
    puts arr.map {|x| x[4].chr}.join("")
end
