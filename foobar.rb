class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    # accepts an array of integers as strings, changes each string into an integer, 
    # adds two to each number, keeps the even numbers only, removes any duplicates, 
    # rejects the resulting numbers greater than or equal to ten, and finally 
    # returns the sum of the resulting array.
    a.length.times do |i|
    	a[i] = a[i].to_i
    	a[i] += 2
    end
    a.delete_if {|item| item % 2 == 1 } 
    a = a.uniq
    a.delete_if {|item| item >= 10} 
    sum = 0
    a.each do |item|
    	sum += item
   	end
   	sum
  end
end
