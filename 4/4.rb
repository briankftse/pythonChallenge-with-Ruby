require 'rubygems'
require 'mechanize'

a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

url = "http://www.pythonchallenge.com/pc/def/linkedlist.php?nothing="
code = "49574"

while code != ""
  a.get(url + code) do |page|
    puts page.body
    new_code = page.body.scan(/[0-9]+/).last
    code = new_code.nil? ? (code.to_i/2).to_s : new_code
  end
end
