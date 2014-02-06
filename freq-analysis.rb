class FreqAnalysis

	def initialize
		@text = File.read(gets.strip)
		@i = -1
		@words = {}
		analyse
		results 
	end

	def get_next_space
		while true
			@i += 1
			if @text[@i] == ' '
				return @i 
			end	
		end
	end

	def analyse
		while @i <= @text.length-1 
			puts @i
			first = get_next_space+1
			last = get_next_space-1
			word = @text[first, last]
			@words.has_key?(word) ? @words[word] += 1 : @words[word] = 1 
			puts @words
		end
	end

	def results
		freq = @words.sort_by {|k,v| v}
		freq.each do |key,value|
			puts "#{key} = #{value}"
		end
	end
end

anal = FreqAnalysis.new

