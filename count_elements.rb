class CountElements
	def initialize(results = [])
	    @results = results
	end
	def perform
	    @results.inject(Hash.new(0)) { |hash, e| hash[e] += 1 ; hash }
	end
end
