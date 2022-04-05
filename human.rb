class Human
  
    def initialize      
      @salaries = generate_salary
    end
  
    def generate_salary
      salaries = []
      6.times { salaries << rand(1000..2000) }
      salaries
    end
    
    def average_salary
      salaries.inject(0,:+)/salaries.size#average salary
    end

    private
    attr_reader :salaries
  end

  puts Human.new.average_salary