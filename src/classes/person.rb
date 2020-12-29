# Peson class
class Person

    attr_accessor :last_name, :first_name
    attr_reader :date_of_birth

    def initialize(options={})
        @date_of_birth = options[:date_of_birth] || Time.local(1900, 1, 1)
    end

    def full_name
        "#{first_name} #{last_name}"
    end

    def initial_and_last_name
        "#{get_initial(first_name)}#{last_name}"
    end

    private

        def get_initial(name)
            name.chars.first + "."
        end

end