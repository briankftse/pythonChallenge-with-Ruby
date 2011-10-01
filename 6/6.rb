code = "90052"
while !code.nil?
  File.open("channel/" + code + ".txt", "r") do |infile|
    str =""
    while (line = infile.gets)
      str << line
    end
    puts str
    code = str.scan(/[0-9]+/).last
  end
end
